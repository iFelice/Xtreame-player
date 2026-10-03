package org.eclipse.paho.client.mqttv3.internal.wire;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import okhttp3.internal.http2.Settings;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttPersistable;
import org.eclipse.paho.client.mqttv3.MqttToken;
import org.eclipse.paho.client.mqttv3.internal.ExceptionHelper;
import p000a.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MqttWireMessage {
    private static final long FOUR_BYTE_INT_MAX = 4294967295L;
    public static final byte MESSAGE_TYPE_CONNACK = 2;
    public static final byte MESSAGE_TYPE_CONNECT = 1;
    public static final byte MESSAGE_TYPE_DISCONNECT = 14;
    public static final byte MESSAGE_TYPE_PINGREQ = 12;
    public static final byte MESSAGE_TYPE_PINGRESP = 13;
    public static final byte MESSAGE_TYPE_PUBACK = 4;
    public static final byte MESSAGE_TYPE_PUBCOMP = 7;
    public static final byte MESSAGE_TYPE_PUBLISH = 3;
    public static final byte MESSAGE_TYPE_PUBREC = 5;
    public static final byte MESSAGE_TYPE_PUBREL = 6;
    public static final byte MESSAGE_TYPE_SUBACK = 9;
    public static final byte MESSAGE_TYPE_SUBSCRIBE = 8;
    public static final byte MESSAGE_TYPE_UNSUBACK = 11;
    public static final byte MESSAGE_TYPE_UNSUBSCRIBE = 10;
    private static final int VARIABLE_BYTE_INT_MAX = 268435455;
    protected boolean duplicate = false;
    protected int msgId = 0;
    private MqttToken token;
    private byte type;
    protected static final Charset STRING_ENCODING = StandardCharsets.UTF_8;
    private static final String[] PACKET_NAMES = {"reserved", "CONNECT", "CONNACK", "PUBLISH", "PUBACK", "PUBREC", "PUBREL", "PUBCOMP", "SUBSCRIBE", "SUBACK", "UNSUBSCRIBE", "UNSUBACK", "PINGREQ", "PINGRESP", "DISCONNECT"};

    public MqttWireMessage(byte b8) {
        this.type = b8;
    }

    public static MqttWireMessage createWireMessage(MqttPersistable mqttPersistable) {
        byte[] payloadBytes = mqttPersistable.getPayloadBytes();
        if (payloadBytes == null) {
            payloadBytes = new byte[0];
        }
        return createWireMessage(new MultiByteArrayInputStream(mqttPersistable.getHeaderBytes(), mqttPersistable.getHeaderOffset(), mqttPersistable.getHeaderLength(), payloadBytes, mqttPersistable.getPayloadOffset(), mqttPersistable.getPayloadLength()));
    }

    public static String decodeUTF8(DataInputStream dataInputStream) throws MqttException {
        try {
            byte[] bArr = new byte[dataInputStream.readUnsignedShort()];
            dataInputStream.readFully(bArr);
            String str = new String(bArr, STRING_ENCODING);
            validateUTF8String(str);
            return str;
        } catch (IOException e8) {
            throw new MqttException(e8);
        }
    }

    public static byte[] encodeMBI(long j8) {
        validateVariableByteInt((int) j8);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i8 = 0;
        do {
            byte b8 = (byte) (j8 % 128);
            j8 /= 128;
            if (j8 > 0) {
                b8 = (byte) (b8 | 128);
            }
            byteArrayOutputStream.write(b8);
            i8++;
            if (j8 <= 0) {
                break;
            }
        } while (i8 < 4);
        return byteArrayOutputStream.toByteArray();
    }

    public static void encodeUTF8(DataOutputStream dataOutputStream, String str) throws MqttException {
        validateUTF8String(str);
        try {
            byte[] bytes = str.getBytes(STRING_ENCODING);
            byte length = (byte) ((bytes.length >>> 8) & 255);
            byte length2 = (byte) (bytes.length & 255);
            dataOutputStream.write(length);
            dataOutputStream.write(length2);
            dataOutputStream.write(bytes);
        } catch (UnsupportedEncodingException e8) {
            throw new MqttException(e8);
        } catch (IOException e9) {
            throw new MqttException(e9);
        }
    }

    public static MultiByteInteger readMBI(DataInputStream dataInputStream) throws IOException {
        byte b8;
        int i8 = 0;
        int i9 = 0;
        int i10 = 1;
        do {
            b8 = dataInputStream.readByte();
            i8++;
            i9 += (b8 & 127) * i10;
            i10 *= 128;
        } while ((b8 & 128) != 0);
        if (i9 < 0 || i9 > VARIABLE_BYTE_INT_MAX) {
            throw new IOException(r.f("This property must be a number between 0 and 268435455. Read value was: ", i9));
        }
        return new MultiByteInteger(i9, i8);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b A[PHI: r2
      0x003b: PHI (r2v2 int) = (r2v1 int), (r2v1 int), (r2v7 int) binds: [B:25:0x004d, B:29:0x0056, B:16:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    private static void validateUTF8String(String str) {
        boolean z7;
        int i8;
        int i9 = 0;
        while (i9 < str.length()) {
            char cCharAt = str.charAt(i9);
            if (Character.isHighSurrogate(cCharAt)) {
                i9++;
                if (i9 != str.length()) {
                    char cCharAt2 = str.charAt(i9);
                    z7 = Character.isLowSurrogate(cCharAt2) || (i8 = ((cCharAt2 & 1023) | ((cCharAt & 1023) << 10)) & Settings.DEFAULT_INITIAL_WINDOW_SIZE) == 65535 || i8 == 65534;
                }
            } else if (Character.isISOControl(cCharAt) || Character.isLowSurrogate(cCharAt) || (cCharAt >= 64976 && (cCharAt == 65534 || cCharAt >= 64976 || cCharAt <= 64991))) {
            }
            if (z7) {
                throw new IllegalArgumentException(String.format("Invalid UTF-8 char: [%x]", Integer.valueOf(cCharAt)));
            }
            i9++;
        }
    }

    public static void validateVariableByteInt(int i8) {
        if (i8 < 0 || i8 > VARIABLE_BYTE_INT_MAX) {
            throw new IllegalArgumentException("This property must be a number between 0 and 268435455");
        }
    }

    public byte[] encodeMessageId() throws MqttException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeShort(this.msgId);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e8) {
            throw new MqttException(e8);
        }
    }

    public byte[] getHeader() throws MqttException {
        try {
            int type = ((getType() & 15) << 4) ^ (getMessageInfo() & 15);
            byte[] variableHeader = getVariableHeader();
            int length = variableHeader.length + getPayload().length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeByte(type);
            dataOutputStream.write(encodeMBI(length));
            dataOutputStream.write(variableHeader);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e8) {
            throw new MqttException(e8);
        }
    }

    public String getKey() {
        return Integer.toString(getMessageId());
    }

    public int getMessageId() {
        return this.msgId;
    }

    public abstract byte getMessageInfo();

    public byte[] getPayload() {
        return new byte[0];
    }

    public MqttToken getToken() {
        return this.token;
    }

    public byte getType() {
        return this.type;
    }

    public abstract byte[] getVariableHeader();

    public boolean isMessageIdRequired() {
        return true;
    }

    public boolean isRetryable() {
        return false;
    }

    public void setDuplicate(boolean z7) {
        this.duplicate = z7;
    }

    public void setMessageId(int i8) {
        this.msgId = i8;
    }

    public void setToken(MqttToken mqttToken) {
        this.token = mqttToken;
    }

    public String toString() {
        return PACKET_NAMES[this.type];
    }

    public static MqttWireMessage createWireMessage(byte[] bArr) {
        return createWireMessage(new ByteArrayInputStream(bArr));
    }

    private static MqttWireMessage createWireMessage(InputStream inputStream) throws MqttException {
        try {
            CountingInputStream countingInputStream = new CountingInputStream(inputStream);
            DataInputStream dataInputStream = new DataInputStream(countingInputStream);
            int unsignedByte = dataInputStream.readUnsignedByte();
            byte b8 = (byte) (unsignedByte >> 4);
            byte b9 = (byte) (unsignedByte & 15);
            long counter = (((long) countingInputStream.getCounter()) + ((long) readMBI(dataInputStream).getValue())) - ((long) countingInputStream.getCounter());
            byte[] bArr = new byte[0];
            if (counter > 0) {
                int i8 = (int) counter;
                byte[] bArr2 = new byte[i8];
                dataInputStream.readFully(bArr2, 0, i8);
                bArr = bArr2;
            }
            if (b8 == 1) {
                return new MqttConnect(b9, bArr);
            }
            if (b8 == 3) {
                return new MqttPublish(b9, bArr);
            }
            if (b8 == 4) {
                return new MqttPubAck(b9, bArr);
            }
            if (b8 == 7) {
                return new MqttPubComp(b9, bArr);
            }
            if (b8 == 2) {
                return new MqttConnack(b9, bArr);
            }
            if (b8 == 12) {
                return new MqttPingReq(b9, bArr);
            }
            if (b8 == 13) {
                return new MqttPingResp(b9, bArr);
            }
            if (b8 == 8) {
                return new MqttSubscribe(b9, bArr);
            }
            if (b8 == 9) {
                return new MqttSuback(b9, bArr);
            }
            if (b8 == 10) {
                return new MqttUnsubscribe(b9, bArr);
            }
            if (b8 == 11) {
                return new MqttUnsubAck(b9, bArr);
            }
            if (b8 == 6) {
                return new MqttPubRel(b9, bArr);
            }
            if (b8 == 5) {
                return new MqttPubRec(b9, bArr);
            }
            if (b8 == 14) {
                return new MqttDisconnect(b9, bArr);
            }
            throw ExceptionHelper.createMqttException(6);
        } catch (IOException e8) {
            throw new MqttException(e8);
        }
    }
}
