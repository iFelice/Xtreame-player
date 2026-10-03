package T0;

import android.os.SystemClock;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f6513a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f6514b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f6515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static long f6516d;

    public static long a() throws Throwable {
        byte[] bArr;
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            synchronized (f6514b) {
            }
            datagramSocket.setSoTimeout(1000);
            c();
            InetAddress[] allByName = InetAddress.getAllByName("time.android.com");
            int length = allByName.length;
            byte b8 = 0;
            SocketTimeoutException socketTimeoutException = null;
            int i8 = 0;
            int i9 = 0;
            while (i8 < length) {
                byte[] bArr2 = new byte[48];
                DatagramPacket datagramPacket = new DatagramPacket(bArr2, 48, allByName[i8], 123);
                bArr2[b8] = 27;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jCurrentTimeMillis == 0) {
                    Arrays.fill(bArr2, 40, 48, b8);
                    bArr = bArr2;
                } else {
                    long j8 = jCurrentTimeMillis / 1000;
                    Long.signum(j8);
                    long j9 = jCurrentTimeMillis - (j8 * 1000);
                    long j10 = j8 + 2208988800L;
                    DatagramSocket datagramSocket2 = datagramSocket;
                    try {
                        bArr2[40] = (byte) (j10 >> 24);
                        bArr = bArr2;
                        bArr[41] = (byte) (j10 >> 16);
                        bArr[42] = (byte) (j10 >> 8);
                        bArr[43] = (byte) j10;
                        long j11 = (j9 * 4294967296L) / 1000;
                        bArr[44] = (byte) (j11 >> 24);
                        bArr[45] = (byte) (j11 >> 16);
                        bArr[46] = (byte) (j11 >> 8);
                        bArr[47] = (byte) (Math.random() * 255.0d);
                        datagramSocket = datagramSocket2;
                    } catch (Throwable th) {
                        th = th;
                        datagramSocket = datagramSocket2;
                        Throwable th2 = th;
                        try {
                            datagramSocket.close();
                            throw th2;
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                            throw th2;
                        }
                    }
                }
                datagramSocket.send(datagramPacket);
                byte[] bArr3 = bArr;
                try {
                    datagramSocket.receive(new DatagramPacket(bArr3, 48));
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j12 = (jElapsedRealtime2 - jElapsedRealtime) + jCurrentTimeMillis;
                    byte b9 = bArr3[0];
                    int i10 = bArr3[1] & 255;
                    long jE = e(24, bArr3);
                    long jE2 = e(32, bArr3);
                    long jE3 = e(40, bArr3);
                    b((byte) ((b9 >> 6) & 3), (byte) (b9 & 7), i10, jE3);
                    long j13 = (j12 + (((jE3 - j12) + (jE2 - jE)) / 2)) - jElapsedRealtime2;
                    datagramSocket.close();
                    return j13;
                } catch (SocketTimeoutException e8) {
                    if (socketTimeoutException == 0) {
                        socketTimeoutException = e8;
                    } else {
                        SocketTimeoutException socketTimeoutException2 = socketTimeoutException;
                        socketTimeoutException2.addSuppressed(e8);
                        socketTimeoutException = socketTimeoutException2;
                    }
                    int i11 = i9 + 1;
                    if (i9 >= 10) {
                        socketTimeoutException.getClass();
                        throw socketTimeoutException;
                    }
                    i8++;
                    i9 = i11;
                    allByName = allByName;
                    b8 = 0;
                }
            }
            socketTimeoutException.getClass();
            throw socketTimeoutException;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static void b(byte b8, byte b9, int i8, long j8) throws IOException {
        if (b8 == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b9 != 4 && b9 != 5) {
            throw new IOException(r.f("SNTP: Untrusted mode: ", b9));
        }
        if (i8 == 0 || i8 > 15) {
            throw new IOException(r.f("SNTP: Untrusted stratum: ", i8));
        }
        if (j8 == 0) {
            throw new IOException("SNTP: Zero transmitTime");
        }
    }

    public static void c() {
        synchronized (f6514b) {
        }
    }

    public static long d(int i8, byte[] bArr) {
        int i9 = bArr[i8];
        int i10 = bArr[i8 + 1];
        int i11 = bArr[i8 + 2];
        int i12 = bArr[i8 + 3];
        if ((i9 & 128) == 128) {
            i9 = (i9 & 127) + 128;
        }
        if ((i10 & 128) == 128) {
            i10 = (i10 & 127) + 128;
        }
        if ((i11 & 128) == 128) {
            i11 = (i11 & 127) + 128;
        }
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        return (((long) i9) << 24) + (((long) i10) << 16) + (((long) i11) << 8) + ((long) i12);
    }

    public static long e(int i8, byte[] bArr) {
        long jD = d(i8, bArr);
        long jD2 = d(i8 + 4, bArr);
        if (jD == 0 && jD2 == 0) {
            return 0L;
        }
        return ((jD2 * 1000) / 4294967296L) + ((jD - 2208988800L) * 1000);
    }
}
