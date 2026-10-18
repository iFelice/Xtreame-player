package U2;

import android.content.Context;
import com.google.android.gms.internal.measurement.U1;
import com.google.protobuf.U2;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import okhttp3.HttpUrl;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class q implements p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile j f6968e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p028d3.a f6969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p028d3.a f6970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Z2.b f6971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p004a3.j f6972d;

    public q(p028d3.a aVar, p028d3.a aVar2, Z2.b bVar, p004a3.j jVar, p004a3.l lVar) {
        this.f6969a = aVar;
        this.f6970b = aVar2;
        this.f6971c = bVar;
        this.f6972d = jVar;
        lVar.getClass();
        lVar.f8694a.execute(new p000a.b(lVar, 28));
    }

    public static q a() {
        j jVar = f6968e;
        if (jVar != null) {
            return (q) jVar.f6960L.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void b(Context context) {
        if (f6968e == null) {
            synchronized (q.class) {
                try {
                    if (f6968e == null) {
                        U1 u7 = new U1();
                        context.getClass();
                        u7.f23010G = context;
                        f6968e = u7.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final o c(S2.a aVar) {
        Set setSingleton;
        byte[] bytes;
        if (aVar instanceof k) {
            aVar.getClass();
            setSingleton = Collections.unmodifiableSet(S2.a.f6397d);
        } else {
            setSingleton = Collections.singleton(new R2.b("proto"));
        }
        u uVarA = i.a();
        aVar.getClass();
        uVarA.R("cct");
        String str = aVar.f6400a;
        String str2 = aVar.f6401b;
        if (str2 == null && str == null) {
            bytes = null;
        } else {
            if (str2 == null) {
                str2 = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            bytes = U2.m("1$", str, "\\", str2).getBytes(Charset.forName("UTF-8"));
        }
        uVarA.f27279I = bytes;
        return new o(setSingleton, uVarA.j(), this);
    }
}
