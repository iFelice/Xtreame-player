package p015b6;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.security.Provider;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f9913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f9914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Method f9915f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Class f9916g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Class f9917h;

    public h(Method method, Method method2, Method method3, Class cls, Class cls2, Provider provider) {
        super(provider);
        this.f9913d = method;
        this.f9914e = method2;
        this.f9915f = method3;
        this.f9916g = cls;
        this.f9917h = cls2;
    }

    @Override // p015b6.j
    public final void a(SSLSocket sSLSocket) {
        try {
            this.f9915f.invoke(null, sSLSocket);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InvocationTargetException e8) {
            j.f9921a.log(Level.FINE, "Failed to remove SSLSocket from Jetty ALPN", (Throwable) e8);
        }
    }

    @Override // p015b6.j
    public final void c(SSLSocket sSLSocket, String str, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            k kVar = (k) list.get(i8);
            if (kVar != k.HTTP_1_0) {
                arrayList.add(kVar.f9929G);
            }
        }
        try {
            this.f9913d.invoke(null, sSLSocket, Proxy.newProxyInstance(j.class.getClassLoader(), new Class[]{this.f9916g, this.f9917h}, new i(arrayList)));
        } catch (IllegalAccessException e8) {
            throw new AssertionError(e8);
        } catch (InvocationTargetException e9) {
            throw new AssertionError(e9);
        }
    }

    @Override // p015b6.j
    public final String d(SSLSocket sSLSocket) {
        try {
            i iVar = (i) Proxy.getInvocationHandler(this.f9914e.invoke(null, sSLSocket));
            boolean z7 = iVar.f9919b;
            if (!z7 && iVar.f9920c == null) {
                j.f9921a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                return null;
            }
            if (z7) {
                return null;
            }
            return iVar.f9920c;
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InvocationTargetException unused2) {
            throw new AssertionError();
        }
    }

    @Override // p015b6.j
    public final int e() {
        return 1;
    }
}
