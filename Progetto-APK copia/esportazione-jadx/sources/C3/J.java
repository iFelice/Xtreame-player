package C3;

import java.util.Collection;
import java.util.Locale;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: loaded from: classes.dex */
public final class J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Collection f1469c;

    public static String a(J j8) {
        StringBuilder sb = new StringBuilder(j8.f1467a);
        String str = j8.f1468b;
        if (str != null) {
            String upperCase = str.toUpperCase(Locale.ROOT);
            if (!upperCase.matches("[A-F0-9]+")) {
                throw new IllegalArgumentException("Invalid application ID: ".concat(String.valueOf(j8.f1468b)));
            }
            sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
            sb.append(upperCase);
        }
        Collection collection = j8.f1469c;
        if (collection != null) {
            if (collection.isEmpty()) {
                throw new IllegalArgumentException("Must specify at least one namespace");
            }
            if (j8.f1468b == null) {
                sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
            }
            sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
            boolean z7 = true;
            for (String string : j8.f1469c) {
                H3.a.c(string);
                if (!z7) {
                    sb.append(",");
                }
                if (!H3.a.f3677a.matcher(string).matches()) {
                    StringBuilder sb2 = new StringBuilder(string.length());
                    for (int i8 = 0; i8 < string.length(); i8++) {
                        char cCharAt = string.charAt(i8);
                        if ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt < 'a' || cCharAt > 'z') && !((cCharAt >= '0' && cCharAt <= '9') || cCharAt == '_' || cCharAt == '-' || cCharAt == '.' || cCharAt == ':'))) {
                            sb2.append(String.format("%%%04x", Integer.valueOf(cCharAt)));
                        } else {
                            sb2.append(cCharAt);
                        }
                    }
                    string = sb2.toString();
                }
                sb.append(string);
                z7 = false;
            }
        }
        if (j8.f1468b == null && j8.f1469c == null) {
            sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
        }
        if (j8.f1469c == null) {
            sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
        }
        sb.append("//ALLOW_IPV6");
        return sb.toString();
    }
}
