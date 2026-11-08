package N;

import B0.C0072w;
import android.net.Uri;
import android.os.Build;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import p094m0.InterfaceC3128k;
import p094m0.o0;
import p117p0.InterfaceC3172j;

/* JADX INFO: renamed from: N.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0260i implements InterfaceC3128k, p149t0.k, W0.v, A0.H, p117p0.u, p117p0.v, InterfaceC3172j, G0.q, K0.h, K0.y, W0.o, p065i1.g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4899G;

    public /* synthetic */ C0260i(int i8) {
        this.f4899G = i8;
    }

    @Override // W0.v
    public final W0.s[] a(Uri uri, Map map) {
        return e();
    }

    @Override // p117p0.InterfaceC3172j
    public final void accept(Object obj) {
        switch (this.f4899G) {
            case 10:
                ((G0.o) obj).b();
                break;
            case 11:
                ((G0.o) obj).a();
                break;
            case 12:
                ((G0.o) obj).c();
                break;
            case 18:
                ((O0.Q) obj).f5131b.release();
                break;
            default:
                ((ExecutorService) obj).shutdown();
                break;
        }
    }

    @Override // K0.y
    public final int b(Object obj) {
        K0.o oVar = (K0.o) obj;
        switch (this.f4899G) {
            case 16:
                HashMap map = K0.z.f4454a;
                String str = oVar.f4355a;
                if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
                    return 1;
                }
                return (Build.VERSION.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
            default:
                HashMap map2 = K0.z.f4454a;
                return (oVar.f4362h ? 2 : 0) + (!oVar.f4363i ? 1 : 0);
        }
    }

    @Override // p117p0.v
    public final void c(Object obj, p094m0.r rVar) {
    }

    @Override // A0.H
    public final void d(o0 o0Var) {
        switch (this.f4899G) {
            case 5:
                p117p0.x.d("BaseGlShaderProgram", "Exception caught by default BaseGlShaderProgram errorListener.", o0Var);
                break;
            default:
                p117p0.x.d("DebugViewShaderProgram", "Exception caught by errorListener.", o0Var);
                break;
        }
    }

    public final W0.s[] e() {
        return new W0.s[]{new p103n1.d()};
    }

    public final Constructor f() {
        switch (this.f4899G) {
            case 20:
                int[] iArr = W0.p.f7448I;
                Boolean bool = Boolean.TRUE;
                p179x0.b bVar = androidx.media3.decoder.flac.j.f9431a;
                if (bool.equals(androidx.media3.decoder.flac.j.class.getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                    return androidx.media3.decoder.flac.i.class.asSubclass(W0.s.class).getConstructor(Integer.TYPE);
                }
                return null;
            default:
                int[] iArr2 = W0.p.f7448I;
                return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(W0.s.class).getConstructor(new Class[0]);
        }
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        p094m0.W w7 = (p094m0.W) obj;
        switch (this.f4899G) {
            case 7:
                int i8 = B0.O.f757Q0;
                w7.p(new C0072w(2, new B0.Y(1), 1003));
                break;
            default:
                w7.x();
                break;
        }
    }

    @Override // G0.q
    public final void release() {
    }
}
