package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Xb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0986Xb extends C2218x implements N9 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final InterfaceC0715Ef f17420J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Context f17421K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final WindowManager f17422L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final I7 f17423M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public DisplayMetrics f17424N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public float f17425O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f17426P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f17427Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f17428R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f17429S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f17430T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f17431U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f17432V;

    public C0986Xb(C0892Qf c0892Qf, Context context, I7 i8) {
        super(14, c0892Qf, HttpUrl.FRAGMENT_ENCODE_SET);
        this.f17426P = -1;
        this.f17427Q = -1;
        this.f17429S = -1;
        this.f17430T = -1;
        this.f17431U = -1;
        this.f17432V = -1;
        this.f17420J = c0892Qf;
        this.f17421K = context;
        this.f17423M = i8;
        this.f17422L = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        JSONObject jSONObjectPut;
        this.f17424N = new DisplayMetrics();
        Display defaultDisplay = this.f17422L.getDefaultDisplay();
        defaultDisplay.getMetrics(this.f17424N);
        this.f17425O = this.f17424N.density;
        this.f17428R = defaultDisplay.getRotation();
        p120p3.d dVar = C3097p.f26618f.f26619a;
        DisplayMetrics displayMetrics = this.f17424N;
        this.f17426P = Math.round(displayMetrics.widthPixels / displayMetrics.density);
        DisplayMetrics displayMetrics2 = this.f17424N;
        this.f17427Q = Math.round(displayMetrics2.heightPixels / displayMetrics2.density);
        InterfaceC0715Ef interfaceC0715Ef = this.f17420J;
        Activity activityZzi = interfaceC0715Ef.zzi();
        if (activityZzi == null || activityZzi.getWindow() == null) {
            this.f17429S = this.f17426P;
            this.f17430T = this.f17427Q;
        } else {
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            int[] iArrM = p113o3.O.m(activityZzi);
            this.f17429S = Math.round(iArrM[0] / this.f17424N.density);
            this.f17430T = Math.round(iArrM[1] / this.f17424N.density);
        }
        if (interfaceC0715Ef.l().b()) {
            this.f17431U = this.f17426P;
            this.f17432V = this.f17427Q;
        } else {
            interfaceC0715Ef.measure(0, 0);
        }
        m(this.f17426P, this.f17427Q, this.f17429S, this.f17430T, this.f17425O, this.f17428R);
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        I7 i8 = this.f17423M;
        boolean zC = i8.c(intent);
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        boolean zC2 = i8.c(intent2);
        boolean zC3 = i8.c(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
        H7 h8 = new H7(0);
        Context context = i8.f13853H;
        try {
            jSONObjectPut = new JSONObject().put("sms", zC2).put("tel", zC).put("calendar", zC3).put("storePicture", ((Boolean) p113o3.r.l(context, h8)).booleanValue() && Q3.c.a(context).f23010G.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0).put("inlineVideo", true);
        } catch (JSONException e8) {
            p120p3.h.e("Error occurred while obtaining the MRAID capabilities.", e8);
            jSONObjectPut = null;
        }
        interfaceC0715Ef.b(jSONObjectPut, "onDeviceFeaturesReceived");
        int[] iArr = new int[2];
        interfaceC0715Ef.getLocationOnScreen(iArr);
        C3097p c3097p = C3097p.f26618f;
        p120p3.d dVar2 = c3097p.f26619a;
        int i9 = iArr[0];
        Context context2 = this.f17421K;
        q(dVar2.f(context2, i9), c3097p.f26619a.f(context2, iArr[1]));
        if (p120p3.h.j(2)) {
            p120p3.h.f("Dispatching Ready Event.");
        }
        try {
            ((InterfaceC0715Ef) this.f21779H).b(new JSONObject().put("js", interfaceC0715Ef.zzn().f28196G), "onReadyEventReceived");
        } catch (JSONException e9) {
            p120p3.h.e("Error occurred while dispatching ready Event.", e9);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0061 A[PHI: r4
      0x0061: PHI (r4v2 int) = (r4v1 int), (r4v6 int) binds: [B:11:0x0040, B:17:0x0052] A[DONT_GENERATE, DONT_INLINE]] */
    public final void q(int i8, int i9) {
        int i10;
        Context context = this.f17421K;
        int i11 = 0;
        if (context instanceof Activity) {
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            i10 = p113o3.O.n((Activity) context)[0];
        } else {
            i10 = 0;
        }
        InterfaceC0715Ef interfaceC0715Ef = this.f17420J;
        if (interfaceC0715Ef.l() == null || !interfaceC0715Ef.l().b()) {
            int width = interfaceC0715Ef.getWidth();
            int height = interfaceC0715Ef.getHeight();
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15684O)).booleanValue()) {
                if (width == 0) {
                    width = interfaceC0715Ef.l() != null ? interfaceC0715Ef.l().f632c : 0;
                }
                if (height != 0) {
                    i11 = height;
                } else if (interfaceC0715Ef.l() != null) {
                    i11 = interfaceC0715Ef.l().f631b;
                }
            } else {
                i11 = height;
            }
            C3097p c3097p = C3097p.f26618f;
            this.f17431U = c3097p.f26619a.f(context, width);
            this.f17432V = c3097p.f26619a.f(context, i11);
        }
        int i12 = i9 - i10;
        try {
            ((InterfaceC0715Ef) this.f21779H).b(new JSONObject().put("x", i8).put("y", i12).put("width", this.f17431U).put("height", this.f17432V), "onDefaultPositionReceived");
        } catch (JSONException e8) {
            p120p3.h.e("Error occurred while dispatching default position.", e8);
        }
        C0930Tb c0930Tb = interfaceC0715Ef.zzN().f17479c0;
        if (c0930Tb != null) {
            c0930Tb.f16663L = i8;
            c0930Tb.f16664M = i9;
        }
    }
}
