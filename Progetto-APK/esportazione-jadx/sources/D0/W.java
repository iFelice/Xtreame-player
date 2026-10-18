package D0;

import java.nio.ByteBuffer;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class W {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f1885d = {79, 103, 103, 83, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, -128, -69, 0, 0, 0, 0, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f1886e = {79, 103, 103, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, MqttWireMessage.MESSAGE_TYPE_UNSUBACK, -103, 87, 83, 1, 16, 79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0, 0, 0, 0, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ByteBuffer f1887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1889c;

    public static void a(ByteBuffer byteBuffer, long j8, int i8, int i9, boolean z7) {
        byteBuffer.put((byte) 79);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 83);
        byteBuffer.put((byte) 0);
        byteBuffer.put(z7 ? (byte) 2 : (byte) 0);
        byteBuffer.putLong(j8);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i8);
        byteBuffer.putInt(0);
        byteBuffer.put(q0.j(i9));
    }
}
