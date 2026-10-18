package p016c;

import F.l;
import P0.j;
import W0.C0376i;
import W0.InterfaceC0377j;
import W0.t;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.util.Xml;
import android.widget.TextView;
import com.google.android.gms.internal.ads.E1;
import com.google.android.gms.internal.ads.Gy;
import com.google.android.gms.internal.measurement.H1;
import com.google.android.gms.internal.pal.D2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import p039f.RunnableC3004t;
import p086l.AbstractC3021c0;
import p086l.C3023d0;
import p086l.Y;
import p111o1.q;
import p117p0.AbstractC3164b;
import p117p0.E;
import p117p0.J;
import p117p0.M;
import p143s2.e;
import p193z.o;
import p193z.r;

/* JADX INFO: loaded from: classes.dex */
public final class g implements InterfaceC0377j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10553G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f10554H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f10555I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f10556J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f10557K;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g() {
        this(10, 4);
        this.f10553G = 4;
    }

    private final synchronized void o() {
        try {
            Gy gy = (Gy) this.f10557K;
            if (gy.f13670b) {
                gy.f13669a.zzj((byte[]) this.f10556J);
                ((Gy) this.f10557K).f13669a.zzi(this.f10554H);
                ((Gy) this.f10557K).f13669a.zzg(this.f10555I);
                ((Gy) this.f10557K).f13669a.zzh(null);
                ((Gy) this.f10557K).f13669a.a();
                return;
            }
            return;
        } catch (RemoteException e8) {
            Log.d("GASS", "Clearcut log failed", e8);
            return;
        }
        throw th;
    }

    private final synchronized void p() {
        try {
            j jVar = (j) this.f10557K;
            if (jVar.f5729G) {
                ((D2) jVar.f5730H).zzj((byte[]) this.f10556J);
                ((D2) ((j) this.f10557K).f5730H).zzi(this.f10554H);
                ((D2) ((j) this.f10557K).f5730H).zzg(this.f10555I);
                ((D2) ((j) this.f10557K).f5730H).zzh(null);
                ((D2) ((j) this.f10557K).f5730H).a();
            }
        } catch (RemoteException e8) {
            Log.d("GASS", "Clearcut log failed", e8);
        }
    }

    @Override // W0.InterfaceC0377j
    public final C0376i a(t tVar, long j8) {
        long jR = tVar.r();
        int iMin = (int) Math.min(this.f10555I, tVar.j() - jR);
        ((E) this.f10557K).I(iMin);
        tVar.c(0, ((E) this.f10557K).f28035a, iMin);
        E e8 = (E) this.f10557K;
        int i8 = e8.f28037c;
        long j9 = -1;
        long j10 = -1;
        long j11 = -9223372036854775807L;
        while (e8.a() >= 188) {
            byte[] bArr = e8.f28035a;
            int i9 = e8.f28036b;
            while (i9 < i8 && bArr[i9] != 71) {
                i9++;
            }
            int i10 = i9 + 188;
            if (i10 > i8) {
                break;
            }
            long jD = AbstractC3164b.D(i9, this.f10554H, e8);
            if (jD != -9223372036854775807L) {
                long jB = ((J) this.f10556J).b(jD);
                if (jB > j8) {
                    return j11 == -9223372036854775807L ? new C0376i(-1, jB, jR) : C0376i.a(jR + j10);
                }
                if (100000 + jB > j8) {
                    return C0376i.a(jR + ((long) i9));
                }
                j11 = jB;
                j10 = i9;
            }
            e8.L(i10);
            j9 = i10;
        }
        return j11 != -9223372036854775807L ? new C0376i(-2, j11, jR + j9) : C0376i.f7420d;
    }

    public final synchronized void b(Object obj, long j8) {
        int i8 = this.f10555I;
        if (i8 > 0) {
            if (j8 <= ((long[]) this.f10556J)[((this.f10554H + i8) - 1) % ((Object[]) this.f10557K).length]) {
                f();
            }
        }
        g();
        int i9 = this.f10554H;
        int i10 = this.f10555I;
        Object obj2 = this.f10557K;
        int length = (i9 + i10) % ((Object[]) obj2).length;
        ((long[]) this.f10556J)[length] = j8;
        ((Object[]) obj2)[length] = obj;
        this.f10555I = i10 + 1;
    }

    public final void c() {
        new Handler(Looper.getMainLooper()).post(new l(this, -3, 0));
    }

    public final void d(Typeface typeface) {
        new Handler(Looper.getMainLooper()).post(new RunnableC3004t(1, this, typeface));
    }

    @Override // W0.InterfaceC0377j
    public final void e() {
        E e8 = (E) this.f10557K;
        byte[] bArr = M.f28051b;
        e8.getClass();
        e8.J(bArr.length, bArr);
    }

    public final synchronized void f() {
        this.f10554H = 0;
        this.f10555I = 0;
        Arrays.fill((Object[]) this.f10557K, (Object) null);
    }

    public final void g() {
        int length = ((Object[]) this.f10557K).length;
        if (this.f10555I < length) {
            return;
        }
        int i8 = length * 2;
        long[] jArr = new long[i8];
        Object[] objArr = new Object[i8];
        int i9 = this.f10554H;
        int i10 = length - i9;
        System.arraycopy((long[]) this.f10556J, i9, jArr, 0, i10);
        System.arraycopy((Object[]) this.f10557K, this.f10554H, objArr, 0, i10);
        int i11 = this.f10554H;
        if (i11 > 0) {
            System.arraycopy((long[]) this.f10556J, 0, jArr, i10, i11);
            System.arraycopy((Object[]) this.f10557K, 0, objArr, i10, this.f10554H);
        }
        this.f10556J = jArr;
        this.f10557K = objArr;
        this.f10554H = 0;
    }

    public final void h(Typeface typeface) {
        int i8;
        if (Build.VERSION.SDK_INT >= 28 && (i8 = this.f10554H) != -1) {
            typeface = AbstractC3021c0.a(typeface, i8, (this.f10555I & 2) != 0);
        }
        C3023d0 c3023d0 = (C3023d0) this.f10557K;
        WeakReference weakReference = (WeakReference) this.f10556J;
        if (c3023d0.f26246m) {
            c3023d0.f26245l = typeface;
            TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    textView.post(new Y(c3023d0, textView, typeface, c3023d0.f26243j));
                } else {
                    textView.setTypeface(typeface, c3023d0.f26243j);
                }
            }
        }
    }

    public final Object i(long j8, boolean z7) {
        Object objL = null;
        long j9 = Long.MAX_VALUE;
        while (this.f10555I > 0) {
            long j10 = j8 - ((long[]) this.f10556J)[this.f10554H];
            if (j10 < 0 && (z7 || (-j10) >= j9)) {
                break;
            }
            objL = l();
            j9 = j10;
        }
        return objL;
    }

    public final synchronized Object j() {
        return this.f10555I == 0 ? null : l();
    }

    public final synchronized Object k(long j8) {
        return i(j8, true);
    }

    public final Object l() {
        H1.i(this.f10555I > 0);
        Object obj = this.f10557K;
        int i8 = this.f10554H;
        Object obj2 = ((Object[]) obj)[i8];
        ((Object[]) obj)[i8] = null;
        this.f10554H = (i8 + 1) % ((Object[]) obj).length;
        this.f10555I--;
        return obj2;
    }

    public final synchronized int m() {
        return this.f10555I;
    }

    public final synchronized void n() {
        switch (this.f10553G) {
            case 11:
                o();
                return;
            default:
                p();
                return;
        }
    }

    public g(int i8, int i9) {
        this.f10553G = i9;
        if (i9 == 7) {
            this.f10556J = new q[i8];
            this.f10555I = 0;
            return;
        }
        if (i9 == 9) {
            this.f10556J = new E1[i8];
            this.f10555I = 0;
        } else if (i9 != 13) {
            this.f10556J = new long[i8];
            this.f10557K = new Object[i8];
        } else {
            this.f10554H = i8;
            Object[] objArr = new Object[i8 + 1];
            this.f10556J = objArr;
            this.f10557K = objArr;
        }
    }

    public g(int i8, ArrayList arrayList, int i9, e eVar) {
        this.f10553G = 10;
        this.f10554H = i8;
        this.f10556J = arrayList;
        this.f10555I = i9;
        this.f10557K = eVar;
    }

    public /* synthetic */ g(Object obj, byte[] bArr, int i8) {
        this.f10553G = i8;
        this.f10557K = obj;
        this.f10556J = bArr;
    }

    public g(int i8, J j8, int i9) {
        this.f10553G = 8;
        this.f10554H = i8;
        this.f10556J = j8;
        this.f10555I = i9;
        this.f10557K = new E();
    }

    public g(Context context, XmlResourceParser xmlResourceParser) {
        this.f10553G = 2;
        this.f10556J = new ArrayList();
        this.f10555I = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), r.f31694h);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i8 = 0; i8 < indexCount; i8++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i8);
            if (index == 0) {
                this.f10554H = typedArrayObtainStyledAttributes.getResourceId(index, this.f10554H);
            } else if (index == 1) {
                this.f10555I = typedArrayObtainStyledAttributes.getResourceId(index, this.f10555I);
                String resourceTypeName = context.getResources().getResourceTypeName(this.f10555I);
                context.getResources().getResourceName(this.f10555I);
                if ("layout".equals(resourceTypeName)) {
                    o oVar = new o();
                    this.f10557K = oVar;
                    oVar.a(context, this.f10555I);
                }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public g(int i8, float[] fArr, float[] fArr2, int i9) {
        this.f10553G = 5;
        this.f10554H = i8;
        H1.d(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
        this.f10556J = fArr;
        this.f10557K = fArr2;
        this.f10555I = i9;
    }

    public g(g gVar) {
        this.f10553G = 6;
        float[] fArr = (float[]) gVar.f10556J;
        this.f10554H = fArr.length / 3;
        this.f10556J = AbstractC3164b.l(fArr);
        this.f10557K = AbstractC3164b.l((float[]) gVar.f10557K);
        int i8 = gVar.f10555I;
        if (i8 == 1) {
            this.f10555I = 5;
        } else if (i8 != 2) {
            this.f10555I = 4;
        } else {
            this.f10555I = 6;
        }
    }

    public g(C3023d0 c3023d0, int i8, int i9, WeakReference weakReference) {
        this.f10553G = 1;
        this.f10557K = c3023d0;
        this.f10554H = i8;
        this.f10555I = i9;
        this.f10556J = weakReference;
    }
}
