package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.of, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1782of extends SSLSocketFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SSLSocketFactory f20300a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1834pf f20301b;

    public C1782of(C1834pf c1834pf) {
        this.f20301b = c1834pf;
    }

    public final void a(Socket socket) throws SocketException {
        C1834pf c1834pf = this.f20301b;
        int i8 = c1834pf.f20466r;
        if (i8 > 0) {
            socket.setReceiveBufferSize(i8);
        }
        c1834pf.f20467s.add(socket);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i8) throws IOException {
        Socket socketCreateSocket = this.f20300a.createSocket(str, i8);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f20300a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f20300a.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i8, InetAddress inetAddress, int i9) throws IOException {
        Socket socketCreateSocket = this.f20300a.createSocket(str, i8, inetAddress, i9);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i8) throws IOException {
        Socket socketCreateSocket = this.f20300a.createSocket(inetAddress, i8);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i8, InetAddress inetAddress2, int i9) throws IOException {
        Socket socketCreateSocket = this.f20300a.createSocket(inetAddress, i8, inetAddress2, i9);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i8, boolean z7) throws IOException {
        Socket socketCreateSocket = this.f20300a.createSocket(socket, str, i8, z7);
        a(socketCreateSocket);
        return socketCreateSocket;
    }
}
