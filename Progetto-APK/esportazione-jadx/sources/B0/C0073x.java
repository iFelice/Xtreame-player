package B0;

import N.C0254c;
import N.C0256e;
import N.InterfaceC0255d;
import O0.InterfaceC0299x;
import android.content.ClipData;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.decoder.av1.Gav1Decoder;
import androidx.media3.decoder.mpegh.MpeghDecoder;
import androidx.media3.decoder.opus.OpusDecoder;
import androidx.media3.decoder.vp9.VpxDecoder;
import com.google.api.Service;
import java.util.HashMap;
import java.util.List;
import p094m0.C3121d;
import p094m0.C3129l;
import p094m0.C3136t;
import p117p0.InterfaceC3166d;
import p117p0.InterfaceC3172j;

/* JADX INFO: renamed from: B0.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0073x implements p190y4.t, p171w0.h, p117p0.u, InterfaceC3166d, InterfaceC3172j, K0.y, R0.n, p125q0.u, p020c3.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1124G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f1125H;

    public /* synthetic */ C0073x(Object obj, int i8) {
        this.f1124G = i8;
        this.f1125H = obj;
    }

    @Override // p117p0.InterfaceC3166d
    public void a(Object obj, Object obj2) {
        A0.O.I(this.f1125H);
        throw null;
    }

    @Override // p117p0.InterfaceC3172j
    public void accept(Object obj) {
        int i8 = this.f1124G;
        Object obj2 = this.f1125H;
        switch (i8) {
            case 17:
                ((G0.o) obj).e((Exception) ((Throwable) obj2));
                break;
            case 22:
                p126q1.h hVar = (p126q1.h) obj2;
                p126q1.a aVar = (p126q1.a) obj;
                hVar.getClass();
                long j8 = aVar.f29532b;
                hVar.f29542b.getClass();
                p126q1.g gVar = new p126q1.g(j8, F2.G.B(aVar.f29533c, aVar.f29531a));
                hVar.f29544d.add(gVar);
                long j9 = hVar.f29551k;
                if (j9 == -9223372036854775807L || aVar.f29534d >= j9) {
                    hVar.a(gVar);
                }
                break;
            default:
                ((z4.E) obj2).g0((p126q1.a) obj);
                break;
        }
    }

    @Override // K0.y
    public int b(Object obj) {
        C3136t c3136t = (C3136t) this.f1125H;
        K0.o oVar = (K0.o) obj;
        HashMap map = K0.z.f4454a;
        oVar.getClass();
        String str = c3136t.f27041o;
        String str2 = oVar.f4356b;
        return ((str2.equals(str) || str2.equals(K0.z.b(c3136t))) && oVar.c(c3136t, false) && oVar.d(c3136t)) ? 1 : 0;
    }

    @Override // p171w0.h
    public void c(p171w0.i iVar) {
        int i8 = this.f1124G;
        Object obj = this.f1125H;
        switch (i8) {
            case 1:
                ((Gav1Decoder) obj).c((VideoDecoderOutputBuffer) iVar);
                break;
            case 2:
                ((androidx.media3.decoder.flac.e) obj).releaseOutputBuffer((SimpleDecoderOutputBuffer) iVar);
                break;
            case 3:
                ((MpeghDecoder) obj).releaseOutputBuffer((SimpleDecoderOutputBuffer) iVar);
                break;
            case 4:
                ((OpusDecoder) obj).releaseOutputBuffer((SimpleDecoderOutputBuffer) iVar);
                break;
            case 5:
                ((VpxDecoder) obj).releaseOutputBuffer((VideoDecoderOutputBuffer) iVar);
                break;
            default:
                p134r1.i iVar2 = (p134r1.i) obj;
                p134r1.h hVar = (p134r1.h) iVar;
                iVar2.getClass();
                hVar.clear();
                iVar2.f29775b.add(hVar);
                break;
        }
    }

    @Override // R0.n
    public z4.d0 d(int i8, p094m0.g0 g0Var, int[] iArr) {
        R0.k kVar = (R0.k) this.f1125H;
        z4.c0 c0Var = R0.q.f6232k;
        z4.E eQ = z4.H.q();
        for (int i9 = 0; i9 < g0Var.f26857a; i9++) {
            eQ.g0(new R0.h(i8, g0Var, i9, kVar, iArr[i9]));
        }
        return eQ.m0();
    }

    public void e(long j8, p117p0.E e8) {
        int i8 = this.f1124G;
        Object obj = this.f1125H;
        switch (i8) {
            case 21:
                com.bumptech.glide.c.l(j8, e8, ((p111o1.i) obj).f27722K);
                break;
            case 25:
                com.bumptech.glide.c.l(j8, e8, (W0.L[]) ((p096m2.o) obj).f27238I);
                break;
            default:
                com.bumptech.glide.c.m(j8, e8, ((A1.K) obj).f312b);
                break;
        }
    }

    @Override // p020c3.b
    public Object execute() {
        int i8 = this.f1124G;
        Object obj = this.f1125H;
        switch (i8) {
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                p012b3.j jVar = (p012b3.j) ((p012b3.d) obj);
                Integer num = (Integer) jVar.N(new C0.y(jVar, 1, ((p028d3.c) jVar.f9854H).a() - jVar.f9856J.f9837d));
                num.getClass();
                return num;
            default:
                p012b3.j jVar2 = (p012b3.j) ((p004a3.j) obj).f8684i;
                jVar2.getClass();
                jVar2.N(new p012b3.g(jVar2, 0));
                return null;
        }
    }

    public boolean f(p039f.S s7, int i8, Bundle bundle) {
        View view = (View) this.f1125H;
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 25 && (i8 & 1) != 0) {
            try {
                ((P.g) s7.f24988H).f();
                Parcelable parcelable = (Parcelable) ((P.g) s7.f24988H).i();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception e8) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e8);
                return false;
            }
        }
        ClipData clipData = new ClipData(((P.g) s7.f24988H).getDescription(), new ClipData.Item(((P.g) s7.f24988H).c()));
        InterfaceC0255d c0254c = i9 >= 31 ? new C0254c(clipData, 2) : new C0256e(clipData, 2);
        c0254c.b(((P.g) s7.f24988H).g());
        c0254c.setExtras(bundle);
        return N.N.k(view, c0254c.build()) == null;
    }

    @Override // p190y4.t
    public Object get() {
        int i8 = this.f1124G;
        Object obj = this.f1125H;
        switch (i8) {
            case 0:
                return (InterfaceC0040b0) obj;
            case 1:
                return (InterfaceC0299x) obj;
            default:
                return (C0066p) obj;
        }
    }

    @Override // p117p0.u
    public void invoke(Object obj) {
        int i8 = this.f1124G;
        Object obj2 = this.f1125H;
        switch (i8) {
            case 6:
                int i9 = O.f757Q0;
                ((p094m0.W) obj).B((p094m0.L) obj2);
                break;
            case 7:
                int i10 = O.f757Q0;
                ((p094m0.W) obj).K((C3121d) obj2);
                break;
            case 8:
                int i11 = O.f757Q0;
                ((p094m0.W) obj).L((p094m0.k0) obj2);
                break;
            case 9:
                ((p094m0.W) obj).b((p110o0.c) obj2);
                break;
            case 10:
                ((p094m0.W) obj).B(((L) obj2).f743G.f813u0);
                break;
            case 11:
                ((p094m0.W) obj).q((p094m0.N) obj2);
                break;
            case 12:
                ((p094m0.W) obj).y((List) obj2);
                break;
            case 13:
                ((p094m0.W) obj).g((p094m0.w0) obj2);
                break;
            default:
                ((p094m0.W) obj).J((C3129l) obj2);
                break;
        }
    }
}
