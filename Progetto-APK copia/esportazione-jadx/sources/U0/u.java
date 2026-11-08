package U0;

import B0.C0074y;
import android.content.Context;
import p094m0.C3126i;
import p094m0.InterfaceC3128k;
import p094m0.o0;
import p094m0.q0;
import p094m0.s0;

/* JADX INFO: loaded from: classes.dex */
public final class u implements q0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p190y4.t f6849b = p190y4.k.Y(new C0074y(2));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6850a = false;

    @Override // p094m0.q0
    public final s0 a(Context context, InterfaceC3128k interfaceC3128k, C3126i c3126i, boolean z7, p046f6.c cVar) throws o0 {
        try {
            Class cls = (Class) f6849b.get();
            Object objNewInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            cls.getMethod("setEnableReplayableCache", Boolean.TYPE).invoke(objNewInstance, Boolean.valueOf(this.f6850a));
            Object objInvoke = cls.getMethod("build", new Class[0]).invoke(objNewInstance, new Object[0]);
            objInvoke.getClass();
            return ((q0) objInvoke).a(context, interfaceC3128k, c3126i, z7, cVar);
        } catch (Exception e8) {
            throw new o0(e8);
        }
    }
}
