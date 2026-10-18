package A0;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.GLES20;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import p039f.RunnableC3004t;
import p094m0.C3126i;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.C3137u;
import p094m0.InterfaceC3128k;
import p094m0.InterfaceC3132o;
import p094m0.o0;
import p094m0.r0;
import p094m0.s0;
import p117p0.AbstractC3164b;
import p117p0.C3171i;

/* JADX INFO: renamed from: A0.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0023x implements s0 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final /* synthetic */ int f223x = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final F.i f225c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EGLDisplay f227e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final N f228f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final h0 f229g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final r0 f230h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Executor f231i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f232j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final D f233k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C3171i f235m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public C0022w f236n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C0022w f237o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f238p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final C3126i f241s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final InterfaceC3128k f242t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final U f243u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public volatile C3137u f244v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public volatile boolean f245w;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f226d = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ArrayList f239q = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Object f240r = new Object();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList f234l = new ArrayList();

    static {
        p094m0.J.a("media3.effect");
    }

    public C0023x(Context context, F.i iVar, EGLDisplay eGLDisplay, N n7, h0 h0Var, r0 r0Var, Executor executor, D d6, boolean z7, C3126i c3126i, InterfaceC3128k interfaceC3128k, U u7) {
        this.f224b = context;
        this.f225c = iVar;
        this.f227e = eGLDisplay;
        this.f228f = n7;
        this.f229g = h0Var;
        this.f230h = r0Var;
        this.f231i = executor;
        this.f232j = z7;
        this.f241s = c3126i;
        this.f243u = u7;
        this.f242t = interfaceC3128k;
        this.f233k = d6;
        C3171i c3171i = new C3171i();
        this.f235m = c3171i;
        c3171i.f();
        C0019t c0019t = new C0019t(this, executor, r0Var, h0Var, u7);
        d6.f36h.h();
        d6.f49u = c0019t;
    }

    /* JADX WARN: Code duplicated, block: B:116:0x029d  */
    /* JADX WARN: Code duplicated, block: B:118:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:120:0x02a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:122:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:125:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:132:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:135:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:137:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:138:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:142:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:146:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:147:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:149:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:150:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:153:0x0301  */
    /* JADX WARN: Code duplicated, block: B:157:0x0327  */
    /* JADX WARN: Code duplicated, block: B:163:0x033c  */
    /* JADX WARN: Code duplicated, block: B:164:0x033f  */
    /* JADX WARN: Code duplicated, block: B:167:0x034e  */
    /* JADX WARN: Code duplicated, block: B:168:0x0350  */
    /* JADX WARN: Code duplicated, block: B:205:0x030d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void a(final C0022w c0022w, boolean z7) throws o0 {
        boolean zG;
        String str;
        String str2;
        p117p0.o oVarL;
        String strGlGetString;
        float[] fArr;
        int i8;
        C0013m c0013mM;
        String str3;
        boolean z8;
        String str4;
        String str5;
        p117p0.o oVarL2;
        z4.d0 d0VarX;
        int i9;
        boolean z9;
        C3126i c3126i = ((C3136t) c0022w.f221c).f27014E;
        c3126i.getClass();
        C3126i c3126i2 = this.f241s;
        if (C3126i.g(c3126i)) {
            H1.d(c3126i.f26872a == 6);
        }
        if (C3126i.g(c3126i) || C3126i.g(c3126i2)) {
            try {
                int[] iArr = new int[1];
                EGL14.eglQueryContext(EGL14.eglGetDisplay(0), EGL14.eglGetCurrentContext(), 12440, iArr, 0);
                AbstractC3164b.e();
                if (iArr[0] != 3) {
                    throw new o0("OpenGL ES 3.0 context support is required for HDR input or output.");
                }
            } catch (p117p0.p e8) {
                throw o0.a(e8);
            }
        }
        H1.d(c3126i.e());
        H1.d(c3126i.f26874c != 1);
        H1.d(c3126i2.e());
        int i10 = c3126i2.f26874c;
        H1.d(i10 != 1);
        if (C3126i.g(c3126i) != C3126i.g(c3126i2)) {
            int i11 = c3126i.f26872a;
            int i12 = c3126i2.f26872a;
            H1.d((i11 == 6 && i12 != 6 && C3126i.g(c3126i) && (i10 == 10 || i10 == 3)) || (c3126i.equals(C3126i.f26871i) && i12 == 6 && C3126i.g(c3126i2)));
        }
        if (z7 || !this.f239q.equals((List) c0022w.f222d)) {
            if (!this.f234l.isEmpty()) {
                for (int i13 = this.f243u == null ? 0 : 1; i13 < this.f234l.size(); i13++) {
                    ((K) this.f234l.get(i13)).release();
                }
                this.f234l.clear();
            }
            U u7 = this.f243u;
            if (u7 != null) {
                this.f234l.add(u7);
            }
            z4.E e9 = new z4.E(4);
            e9.j0((List) c0022w.f222d);
            InterfaceC3128k interfaceC3128k = this.f242t;
            if (interfaceC3128k != InterfaceC3128k.f26911C) {
                e9.g0(new C0008h(interfaceC3128k, this.f241s));
            }
            ArrayList arrayList = this.f234l;
            Context context = this.f224b;
            z4.d0 d0VarM0 = e9.m0();
            C3126i c3126i3 = this.f241s;
            D d6 = this.f233k;
            z4.E e10 = new z4.E(4);
            z4.E e11 = new z4.E(4);
            z4.E e12 = new z4.E(4);
            for (int i14 = 0; i14 < d0VarM0.f31846J; i14++) {
                InterfaceC3132o interfaceC3132o = (InterfaceC3132o) d0VarM0.get(i14);
                H1.c("DefaultVideoFrameProcessor only supports GlEffects", interfaceC3132o instanceof G);
                G g8 = (G) interfaceC3132o;
                if (g8 instanceof P) {
                    e11.g0((P) g8);
                } else {
                    boolean zG2 = C3126i.g(c3126i3);
                    z4.d0 d0VarM1 = e11.m0();
                    z4.d0 d0VarM2 = e12.m0();
                    if (!d0VarM1.isEmpty() || !d0VarM2.isEmpty()) {
                        e10.g0(C0013m.j(context, d0VarM1, d0VarM2, zG2));
                        e11 = new z4.E(4);
                        e12 = new z4.E(4);
                    }
                    e10.g0(g8.e(context, zG2));
                }
            }
            z4.d0 d0VarM3 = e11.m0();
            z4.d0 d0VarM4 = e12.m0();
            d6.f36h.h();
            ArrayList arrayList2 = d6.f30b;
            arrayList2.clear();
            arrayList2.addAll(d0VarM3);
            ArrayList arrayList3 = d6.f31c;
            arrayList3.clear();
            arrayList3.addAll(d0VarM4);
            d6.f50v = true;
            arrayList.addAll(e10.m0());
            this.f228f.f75j = (K) p190y4.k.F(this.f234l, this.f233k);
            F.i iVar = this.f225c;
            ArrayList arrayList4 = this.f234l;
            D d8 = this.f233k;
            h0 h0Var = this.f229g;
            r0 r0Var = this.f230h;
            Executor executor = this.f231i;
            ArrayList arrayList5 = new ArrayList(arrayList4);
            arrayList5.add(d8);
            int i15 = 0;
            while (i15 < arrayList5.size() - 1) {
                K k8 = (K) arrayList5.get(i15);
                i15++;
                K k9 = (K) arrayList5.get(i15);
                C0006f c0006f = new C0006f(iVar, k8, k9, h0Var);
                k8.d(c0006f);
                Objects.requireNonNull(r0Var);
                k8.e(executor, new C0014n(r0Var, 1));
                k9.f(c0006f);
            }
            this.f239q.clear();
            this.f239q.addAll((List) c0022w.f222d);
        }
        N n7 = this.f228f;
        int i16 = c0022w.f220b;
        C3137u c3137u = new C3137u((C3136t) c0022w.f221c, c0022w.f219a);
        H1.j(n7.f75j);
        SparseArray sparseArray = n7.f72g;
        H1.h("Input type not registered: " + i16, p117p0.M.k(sparseArray, i16));
        for (int i17 = 0; i17 < sparseArray.size(); i17++) {
            L l4 = ((M) sparseArray.get(sparseArray.keyAt(i17))).f64c;
            if (l4 != null) {
                l4.f61H = false;
            }
        }
        M m7 = (M) sparseArray.get(i16);
        C3126i c3126i4 = c3137u.f27053a.f27014E;
        c3126i4.getClass();
        int i18 = c3126i4.f26874c;
        int i19 = n7.f73h;
        C3126i c3126i5 = n7.f67b;
        Context context2 = n7.f66a;
        if (i16 == 1) {
            z4.d0 d0Var = C0013m.f174s;
            zG = C3126i.g(c3126i4);
            if (zG) {
                str = "shaders/vertex_shader_transformation_es3.glsl";
            } else {
                str = "shaders/vertex_shader_transformation_es2.glsl";
            }
            if (zG) {
                str2 = "shaders/fragment_shader_transformation_external_yuv_es3.glsl";
            } else {
                str2 = "shaders/fragment_shader_transformation_sdr_external_es2.glsl";
            }
            oVarL = C0013m.l(context2, str, str2);
            if (zG) {
                if (Objects.equals(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT)) {
                    try {
                        EGLDisplay eGLDisplayT = AbstractC3164b.t();
                        EGLContext eGLContextM = AbstractC3164b.m(EGL14.EGL_NO_CONTEXT, eGLDisplayT, 2, AbstractC3164b.f28066b);
                        AbstractC3164b.n(eGLContextM, eGLDisplayT);
                        strGlGetString = GLES20.glGetString(7939);
                        AbstractC3164b.p(eGLContextM, eGLDisplayT);
                    } catch (p117p0.p unused) {
                    }
                } else {
                    strGlGetString = GLES20.glGetString(7939);
                }
                if (strGlGetString != null && strGlGetString.contains("GL_EXT_YUV_target")) {
                    if (c3126i4.f26873b == 1) {
                        fArr = C0013m.f175t;
                    } else {
                        fArr = C0013m.f176u;
                    }
                    oVarL.e("uYuvToRgbColorTransform", fArr);
                    oVarL.g(i18, "uInputColorTransfer");
                    if (c3126i5.f26872a != 6) {
                        i8 = 1;
                    } else {
                        i8 = 0;
                    }
                    oVarL.g(i8, "uApplyHdrToSdrToneMapping");
                }
                throw new o0("The EXT_YUV_target extension is required for HDR editing input.");
            }
            oVarL.f28116f = n7.f74i;
            c0013mM = C0013m.m(oVarL, c3126i4, c3126i5, i19, z4.d0.f31844K);
        } else if (i16 == 2 || i16 == 3) {
            z4.d0 d0Var2 = C0013m.f174s;
            H1.i(i18 != 2 || i16 == 2);
            boolean zG3 = C3126i.g(c3126i4);
            if (i16 == 2) {
                str3 = "shaders/vertex_shader_transformation_es2.glsl";
                z8 = c3126i5.f26872a == 6;
                if (!zG3 || z8) {
                    str4 = "shaders/vertex_shader_transformation_es3.glsl";
                } else {
                    str4 = str3;
                }
                if (z8) {
                    str5 = "shaders/fragment_shader_transformation_ultra_hdr_es3.glsl";
                } else if (zG3) {
                    str5 = "shaders/fragment_shader_transformation_hdr_internal_es3.glsl";
                } else {
                    str5 = "shaders/fragment_shader_transformation_sdr_internal_es2.glsl";
                }
                oVarL2 = C0013m.l(context2, str4, str5);
                if (!z8) {
                    if (!zG3 || i18 == 2 || i18 == 3) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    H1.d(z9);
                    oVarL2.g(i18, "uInputColorTransfer");
                }
                if (zG3) {
                    if (c3126i5.f26872a != 6) {
                        i9 = 1;
                    } else {
                        i9 = 0;
                    }
                    oVarL2.g(i9, "uApplyHdrToSdrToneMapping");
                }
                d0VarX = z4.d0.f31844K;
                if (i16 == 2) {
                    d0VarX = z4.H.x(new C0012l());
                }
                c0013mM = C0013m.m(oVarL2, c3126i4, c3126i5, i19, d0VarX);
            } else {
                str3 = "shaders/vertex_shader_transformation_es2.glsl";
            }
            if (zG3) {
                str4 = "shaders/vertex_shader_transformation_es3.glsl";
            } else {
                str4 = "shaders/vertex_shader_transformation_es3.glsl";
            }
            if (z8) {
                str5 = "shaders/fragment_shader_transformation_ultra_hdr_es3.glsl";
            } else if (zG3) {
                str5 = "shaders/fragment_shader_transformation_hdr_internal_es3.glsl";
            } else {
                str5 = "shaders/fragment_shader_transformation_sdr_internal_es2.glsl";
            }
            oVarL2 = C0013m.l(context2, str4, str5);
            if (!z8) {
                if (zG3) {
                    z9 = true;
                } else {
                    z9 = true;
                }
                H1.d(z9);
                oVarL2.g(i18, "uInputColorTransfer");
            }
            if (zG3) {
                if (c3126i5.f26872a != 6) {
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                oVarL2.g(i9, "uApplyHdrToSdrToneMapping");
            }
            d0VarX = z4.d0.f31844K;
            if (i16 == 2) {
                d0VarX = z4.H.x(new C0012l());
            }
            c0013mM = C0013m.m(oVarL2, c3126i4, c3126i5, i19, d0VarX);
        } else {
            if (i16 != 4) {
                throw new o0(p000a.r.f("Unsupported input type ", i16));
            }
            z4.d0 d0Var3 = C0013m.f174s;
            zG = C3126i.g(c3126i4);
            if (zG) {
                str = "shaders/vertex_shader_transformation_es3.glsl";
            } else {
                str = "shaders/vertex_shader_transformation_es2.glsl";
            }
            if (zG) {
                str2 = "shaders/fragment_shader_transformation_external_yuv_es3.glsl";
            } else {
                str2 = "shaders/fragment_shader_transformation_sdr_external_es2.glsl";
            }
            oVarL = C0013m.l(context2, str, str2);
            if (zG) {
                if (Objects.equals(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT)) {
                    EGLDisplay eGLDisplayT2 = AbstractC3164b.t();
                    EGLContext eGLContextM2 = AbstractC3164b.m(EGL14.EGL_NO_CONTEXT, eGLDisplayT2, 2, AbstractC3164b.f28066b);
                    AbstractC3164b.n(eGLContextM2, eGLDisplayT2);
                    strGlGetString = GLES20.glGetString(7939);
                    AbstractC3164b.p(eGLContextM2, eGLDisplayT2);
                } else {
                    strGlGetString = GLES20.glGetString(7939);
                }
                if (strGlGetString != null) {
                    if (c3126i4.f26873b == 1) {
                        fArr = C0013m.f175t;
                    } else {
                        fArr = C0013m.f176u;
                    }
                    oVarL.e("uYuvToRgbColorTransform", fArr);
                    oVarL.g(i18, "uInputColorTransfer");
                    if (c3126i5.f26872a != 6) {
                        i8 = 1;
                    } else {
                        i8 = 0;
                    }
                    oVarL.g(i8, "uApplyHdrToSdrToneMapping");
                }
                throw new o0("The EXT_YUV_target extension is required for HDR editing input.");
            }
            oVarL.f28116f = n7.f74i;
            c0013mM = C0013m.m(oVarL, c3126i4, c3126i5, i19, z4.d0.f31844K);
        }
        c0013mM.f116e = n7.f71f;
        c0013mM.f115d = n7.f70e;
        InterfaceC0024y interfaceC0024y = m7.f63b;
        if (interfaceC0024y != null) {
            ((C0013m) interfaceC0024y).release();
        }
        m7.f63b = c0013mM;
        a0 a0Var = m7.f62a;
        a0Var.j(c0013mM);
        c0013mM.f(a0Var);
        InterfaceC0024y interfaceC0024y2 = m7.f63b;
        interfaceC0024y2.getClass();
        L l8 = new L(n7.f68c, interfaceC0024y2, n7.f75j, n7.f69d);
        m7.f64c = l8;
        K k10 = m7.f63b;
        k10.getClass();
        ((AbstractC0001a) k10).f114c = l8;
        L l9 = m7.f64c;
        if (l9 != null) {
            l9.f61H = true;
        }
        K k11 = n7.f75j;
        l9.getClass();
        k11.f(l9);
        n7.f76k = a0Var;
        a0Var.h(c3137u, i16 == 4);
        this.f235m.f();
        synchronized (this.f240r) {
        }
        final int i20 = 0;
        this.f231i.execute(new Runnable(this) { // from class: A0.s

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ C0023x f200H;

            {
                this.f200H = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i21 = i20;
                C0022w c0022w2 = c0022w;
                C0023x c0023x = this.f200H;
                c0023x.getClass();
                switch (i21) {
                    case 0:
                        int i22 = c0022w2.f220b;
                        c0023x.f230h.getClass();
                        break;
                    default:
                        final float f8 = ((C3136t) c0022w2.f221c).f27052z;
                        final p046f6.c cVar = (p046f6.c) c0023x.f230h;
                        ((Y) cVar.f25223I).f103f.execute(new Runnable() { // from class: A0.X
                            @Override // java.lang.Runnable
                            public final void run() {
                                U0.x xVar = (U0.x) ((Y) cVar.f25223I).f101d;
                                C3135s c3135sA = xVar.f6865j.a();
                                c3135sA.f27007y = f8;
                                xVar.f6865j = c3135sA.a();
                                xVar.c();
                            }
                        });
                        break;
                }
            }
        });
        C0022w c0022w2 = this.f236n;
        if (c0022w2 == null || ((C3136t) c0022w.f221c).f27052z != ((C3136t) c0022w2.f221c).f27052z) {
            final int i21 = 1;
            this.f231i.execute(new Runnable(this) { // from class: A0.s

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ C0023x f200H;

                {
                    this.f200H = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i22 = i21;
                    C0022w c0022w3 = c0022w;
                    C0023x c0023x = this.f200H;
                    c0023x.getClass();
                    switch (i22) {
                        case 0:
                            int i23 = c0022w3.f220b;
                            c0023x.f230h.getClass();
                            break;
                        default:
                            final float f8 = ((C3136t) c0022w3.f221c).f27052z;
                            final p046f6.c cVar = (p046f6.c) c0023x.f230h;
                            ((Y) cVar.f25223I).f103f.execute(new Runnable() { // from class: A0.X
                                @Override // java.lang.Runnable
                                public final void run() {
                                    U0.x xVar = (U0.x) ((Y) cVar.f25223I).f101d;
                                    C3135s c3135sA = xVar.f6865j.a();
                                    c3135sA.f27007y = f8;
                                    xVar.f6865j = c3135sA.a();
                                    xVar.c();
                                }
                            });
                            break;
                    }
                }
            });
        }
        this.f236n = c0022w;
    }

    public final void b() throws o0 {
        C0022w c0022w;
        this.f229g.h();
        synchronized (this.f240r) {
            try {
                c0022w = this.f237o;
                if (c0022w != null) {
                    this.f237o = null;
                } else {
                    c0022w = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c0022w != null) {
            a(c0022w, false);
        }
    }

    public final void c(p094m0.b0 b0Var) {
        D d6 = this.f233k;
        d6.getClass();
        try {
            d6.f36h.c(new C0004d(3, d6, b0Var));
        } catch (InterruptedException e8) {
            Thread.currentThread().interrupt();
            d6.f37i.execute(new RunnableC3004t(9, d6, e8));
        }
    }
}
