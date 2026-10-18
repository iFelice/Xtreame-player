package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class PJ extends Nz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f15367e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DatagramPacket f15368f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Uri f15369g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public DatagramSocket f15370h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MulticastSocket f15371i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public InetAddress f15372j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f15373k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f15374l;

    public PJ() {
        super(true);
        byte[] bArr = new byte[2000];
        this.f15367e = bArr;
        this.f15368f = new DatagramPacket(bArr, 0, 2000);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws CJ {
        Uri uri = cd.f12592a;
        this.f15369g = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.f15369g.getPort();
        j(cd);
        try {
            this.f15372j = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f15372j, port);
            if (this.f15372j.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f15371i = multicastSocket;
                multicastSocket.joinGroup(this.f15372j);
                this.f15370h = this.f15371i;
            } else {
                this.f15370h = new DatagramSocket(inetSocketAddress);
            }
            this.f15370h.setSoTimeout(8000);
            this.f15373k = true;
            k(cd);
            return -1L;
        } catch (IOException e8) {
            throw new CJ(2001, e8);
        } catch (SecurityException e9) {
            throw new CJ(2006, e9);
        }
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws CJ {
        if (i9 == 0) {
            return 0;
        }
        int i10 = this.f15374l;
        DatagramPacket datagramPacket = this.f15368f;
        if (i10 == 0) {
            try {
                DatagramSocket datagramSocket = this.f15370h;
                datagramSocket.getClass();
                datagramSocket.receive(datagramPacket);
                int length = datagramPacket.getLength();
                this.f15374l = length;
                zzg(length);
            } catch (SocketTimeoutException e8) {
                throw new CJ(2002, e8);
            } catch (IOException e9) {
                throw new CJ(2001, e9);
            }
        }
        int length2 = datagramPacket.getLength();
        int i11 = this.f15374l;
        int iMin = Math.min(i11, i9);
        System.arraycopy(this.f15367e, length2 - i11, bArr, i8, iMin);
        this.f15374l -= iMin;
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        return this.f15369g;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        this.f15369g = null;
        MulticastSocket multicastSocket = this.f15371i;
        if (multicastSocket != null) {
            try {
                InetAddress inetAddress = this.f15372j;
                inetAddress.getClass();
                multicastSocket.leaveGroup(inetAddress);
            } catch (IOException unused) {
            }
            this.f15371i = null;
        }
        DatagramSocket datagramSocket = this.f15370h;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f15370h = null;
        }
        this.f15372j = null;
        this.f15374l = 0;
        if (this.f15373k) {
            this.f15373k = false;
            i();
        }
    }
}
