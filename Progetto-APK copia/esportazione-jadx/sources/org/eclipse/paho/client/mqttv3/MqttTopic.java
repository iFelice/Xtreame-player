package org.eclipse.paho.client.mqttv3;

import java.io.UnsupportedEncodingException;
import org.eclipse.paho.client.mqttv3.internal.ClientComms;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttPublish;
import org.eclipse.paho.client.mqttv3.util.Strings;
import p000a.r;

/* JADX INFO: loaded from: classes2.dex */
public class MqttTopic {
    private static final int MAX_TOPIC_LEN = 65535;
    private static final int MIN_TOPIC_LEN = 1;
    public static final String MULTI_LEVEL_WILDCARD = "#";
    public static final String MULTI_LEVEL_WILDCARD_PATTERN = "/#";
    private static final char NUL = 0;
    public static final String SINGLE_LEVEL_WILDCARD = "+";
    public static final String TOPIC_LEVEL_SEPARATOR = "/";
    public static final String TOPIC_WILDCARDS = "#+";
    private ClientComms comms;
    private String name;

    public MqttTopic(String str, ClientComms clientComms) {
        this.comms = clientComms;
        this.name = str;
    }

    private MqttPublish createPublish(MqttMessage mqttMessage) {
        return new MqttPublish(getName(), mqttMessage);
    }

    public static boolean isMatched(String str, String str2) {
        int length = str2.length();
        int length2 = str.length();
        validate(str, true);
        validate(str2, false);
        if (str.equals(str2)) {
            return true;
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < length2 && i9 < length) {
            if (str.charAt(i8) != '#') {
                if ((str2.charAt(i9) == '/' && str.charAt(i8) != '/') || (str.charAt(i8) != '+' && str.charAt(i8) != '#' && str.charAt(i8) != str2.charAt(i9))) {
                    break;
                }
                if (str.charAt(i8) == '+') {
                    int i10 = i9 + 1;
                    while (i10 < length && str2.charAt(i10) != '/') {
                        i10 = i9 + 2;
                        i9++;
                    }
                }
                i8++;
                i9++;
            } else {
                i9 = length;
                i8 = length2;
                break;
            }
        }
        if (i9 == length && i8 == length2) {
            return true;
        }
        if (str.length() - i8 > 0 && i9 == length) {
            if (str2.charAt(i9 - 1) == '/' && str.charAt(i8) == '#') {
                return true;
            }
            if (str.length() - i8 > 1 && str.substring(i8, i8 + 2).equals(MULTI_LEVEL_WILDCARD_PATTERN)) {
                return true;
            }
        }
        return false;
    }

    public static void validate(String str, boolean z7) {
        try {
            int length = str.getBytes("UTF-8").length;
            if (length < 1 || length > 65535) {
                throw new IllegalArgumentException(String.format("Invalid topic length, should be in range[%d, %d]!", 1, 65535));
            }
            if (!z7) {
                if (Strings.containsAny(str, TOPIC_WILDCARDS)) {
                    throw new IllegalArgumentException("The topic name MUST NOT contain any wildcard characters (#+)");
                }
            } else {
                if (Strings.equalsAny(str, new String[]{MULTI_LEVEL_WILDCARD, SINGLE_LEVEL_WILDCARD})) {
                    return;
                }
                if (Strings.countMatches(str, MULTI_LEVEL_WILDCARD) > 1 || (str.contains(MULTI_LEVEL_WILDCARD) && !str.endsWith(MULTI_LEVEL_WILDCARD_PATTERN))) {
                    throw new IllegalArgumentException("Invalid usage of multi-level wildcard in topic string: ".concat(str));
                }
                validateSingleLevelWildcard(str);
            }
        } catch (UnsupportedEncodingException e8) {
            throw new IllegalStateException(e8.getMessage());
        }
    }

    private static void validateSingleLevelWildcard(String str) {
        char cCharAt = SINGLE_LEVEL_WILDCARD.charAt(0);
        char cCharAt2 = TOPIC_LEVEL_SEPARATOR.charAt(0);
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i8 = 0;
        while (i8 < length) {
            int i9 = i8 - 1;
            char c8 = i9 >= 0 ? charArray[i9] : NUL;
            int i10 = i8 + 1;
            char c9 = i10 < length ? charArray[i10] : NUL;
            if (charArray[i8] == cCharAt && ((c8 != cCharAt2 && c8 != 0) || (c9 != cCharAt2 && c9 != 0))) {
                throw new IllegalArgumentException(r.g("Invalid usage of single-level wildcard in topic string '", str, "'!"));
            }
            i8 = i10;
        }
    }

    public String getName() {
        return this.name;
    }

    public MqttDeliveryToken publish(byte[] bArr, int i8, boolean z7) {
        MqttMessage mqttMessage = new MqttMessage(bArr);
        mqttMessage.setQos(i8);
        mqttMessage.setRetained(z7);
        return publish(mqttMessage);
    }

    public String toString() {
        return getName();
    }

    public MqttDeliveryToken publish(MqttMessage mqttMessage) {
        MqttDeliveryToken mqttDeliveryToken = new MqttDeliveryToken(this.comms.getClient().getClientId());
        mqttDeliveryToken.setMessage(mqttMessage);
        this.comms.sendNoWait(createPublish(mqttMessage), mqttDeliveryToken);
        mqttDeliveryToken.internalTok.waitUntilSent();
        return mqttDeliveryToken;
    }
}
