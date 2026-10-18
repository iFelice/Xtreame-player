package p015b6;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f9911d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f9912e;

    public g(Provider provider, Method method, Method method2) {
        super(provider);
        this.f9911d = method;
        this.f9912e = method2;
    }

    @Override // p015b6.j
    public final void c(SSLSocket sSLSocket, String str, List list) {
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            k kVar = (k) it.next();
            if (kVar != k.HTTP_1_0) {
                arrayList.add(kVar.f9929G);
            }
        }
        try {
            this.f9911d.invoke(sSLParameters, arrayList.toArray(new String[arrayList.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException e8) {
            throw new RuntimeException(e8);
        } catch (InvocationTargetException e9) {
            throw new RuntimeException(e9);
        }
    }

    @Override // p015b6.j
    public final String d(SSLSocket sSLSocket) {
        try {
            return (String) this.f9912e.invoke(sSLSocket, new Object[0]);
        } catch (IllegalAccessException e8) {
            throw new RuntimeException(e8);
        } catch (InvocationTargetException e9) {
            throw new RuntimeException(e9);
        }
    }

    @Override // p015b6.j
    public final int e() {
        return 1;
    }
}
