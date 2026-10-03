package p141s0;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class Q extends AbstractC3178c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f29917f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final DatagramPacket f29918g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Uri f29919h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DatagramSocket f29920i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MulticastSocket f29921j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InetAddress f29922k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f29923l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f29924m;

    public Q() {
        super(true);
        this.f29916e = 8000;
        byte[] bArr = new byte[2000];
        this.f29917f = bArr;
        this.f29918g = new DatagramPacket(bArr, 0, 2000);
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws P {
        Uri uri = c3188m.f29963a;
        this.f29919h = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.f29919h.getPort();
        u();
        try {
            this.f29922k = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f29922k, port);
            if (this.f29922k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f29921j = multicastSocket;
                multicastSocket.joinGroup(this.f29922k);
                this.f29920i = this.f29921j;
            } else {
                this.f29920i = new DatagramSocket(inetSocketAddress);
            }
            this.f29920i.setSoTimeout(this.f29916e);
            this.f29923l = true;
            v(c3188m);
            return -1L;
        } catch (IOException e8) {
            throw new P(2001, e8);
        } catch (SecurityException e9) {
            throw new P(2006, e9);
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        this.f29919h = null;
        MulticastSocket multicastSocket = this.f29921j;
        if (multicastSocket != null) {
            try {
                InetAddress inetAddress = this.f29922k;
                inetAddress.getClass();
                multicastSocket.leaveGroup(inetAddress);
            } catch (IOException unused) {
            }
            this.f29921j = null;
        }
        DatagramSocket datagramSocket = this.f29920i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f29920i = null;
        }
        this.f29922k = null;
        this.f29924m = 0;
        if (this.f29923l) {
            this.f29923l = false;
            t();
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f29919h;
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws P {
        if (i9 == 0) {
            return 0;
        }
        int i10 = this.f29924m;
        DatagramPacket datagramPacket = this.f29918g;
        if (i10 == 0) {
            try {
                DatagramSocket datagramSocket = this.f29920i;
                datagramSocket.getClass();
                datagramSocket.receive(datagramPacket);
                int length = datagramPacket.getLength();
                this.f29924m = length;
                s(length);
            } catch (SocketTimeoutException e8) {
                throw new P(2002, e8);
            } catch (IOException e9) {
                throw new P(2001, e9);
            }
        }
        int length2 = datagramPacket.getLength();
        int i11 = this.f29924m;
        int iMin = Math.min(i11, i9);
        System.arraycopy(this.f29917f, length2 - i11, bArr, i8, iMin);
        this.f29924m -= iMin;
        return iMin;
    }
}
