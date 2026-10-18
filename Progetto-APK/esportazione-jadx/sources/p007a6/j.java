package p007a6;

import java.io.IOException;
import java.net.Socket;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import p015b6.b;
import p015b6.d;
import p015b6.k;
import p015b6.m;
import p086l.e1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f8726a = Collections.unmodifiableList(Arrays.asList(k.HTTP_2));

    public static SSLSocket a(SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, Socket socket, String str, int i8, b bVar) throws IOException {
        k kVar;
        p190y4.k.s(sSLSocketFactory, "sslSocketFactory");
        p190y4.k.s(socket, "socket");
        p190y4.k.s(bVar, "spec");
        SSLSocket sSLSocket = (SSLSocket) sSLSocketFactory.createSocket(socket, str, i8, true);
        String[] strArr = bVar.f9893b;
        String[] strArr2 = strArr != null ? (String[]) m.a(strArr, sSLSocket.getEnabledCipherSuites()) : null;
        String[] strArr3 = (String[]) m.a(bVar.f9894c, sSLSocket.getEnabledProtocols());
        e1 e1Var = new e1(bVar);
        if (!e1Var.f26251b) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        if (strArr2 == null) {
            e1Var.f26253d = null;
        } else {
            e1Var.f26253d = (String[]) strArr2.clone();
        }
        if (!e1Var.f26251b) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        if (strArr3 == null) {
            e1Var.f26254e = null;
        } else {
            e1Var.f26254e = (String[]) strArr3.clone();
        }
        b bVar2 = new b(e1Var);
        sSLSocket.setEnabledProtocols(bVar2.f9894c);
        String[] strArr4 = bVar2.f9893b;
        if (strArr4 != null) {
            sSLSocket.setEnabledCipherSuites(strArr4);
        }
        i iVar = i.f8724c;
        boolean z7 = bVar.f9895d;
        List list = f8726a;
        String strD = iVar.d(sSLSocket, str, z7 ? list : null);
        if (strD.equals("http/1.0")) {
            kVar = k.HTTP_1_0;
        } else if (strD.equals("http/1.1")) {
            kVar = k.HTTP_1_1;
        } else if (strD.equals("h2")) {
            kVar = k.HTTP_2;
        } else {
            if (!strD.equals("spdy/3.1")) {
                throw new IOException("Unexpected protocol: ".concat(strD));
            }
            kVar = k.SPDY_3;
        }
        p190y4.k.x(list.contains(kVar), "Only " + list + " are supported, but negotiated protocol is %s", strD);
        if (hostnameVerifier == null) {
            hostnameVerifier = d.f9903a;
        }
        if (hostnameVerifier.verify((str.startsWith("[") && str.endsWith("]")) ? str.substring(1, str.length() - 1) : str, sSLSocket.getSession())) {
            return sSLSocket;
        }
        throw new SSLPeerUnverifiedException("Cannot verify hostname: ".concat(str));
    }
}
