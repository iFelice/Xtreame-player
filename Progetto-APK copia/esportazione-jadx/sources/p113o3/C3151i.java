package p113o3;

import Y.DialogInterfaceOnCancelListenerC0398j;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C1895qo;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.EnumC1687mo;
import com.google.android.gms.internal.ads.InterfaceExecutorServiceC1504jC;
import com.google.android.gms.internal.ads.Q7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.HttpUrl;
import p000a.r;
import p083k3.l;
import p090l3.C3099q;
import p120p3.h;

/* JADX INFO: renamed from: o3.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3151i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f27959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1895qo f27960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f27961c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f27962d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f27963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f27964f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f27966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PointF f27967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PointF f27968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Handler f27969k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f27965g = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final RunnableC3144b f27970l = new RunnableC3144b(this, 2);

    public C3151i(Context context) {
        this.f27959a = context;
        this.f27966h = ViewConfiguration.get(context).getScaledTouchSlop();
        l lVar = l.f25980A;
        lVar.f25998r.j();
        this.f27969k = (Handler) lVar.f25998r.f1122J;
        this.f27960b = lVar.f25993m.f27983g;
    }

    public static final int e(String str, ArrayList arrayList, boolean z7) {
        if (!z7) {
            return -1;
        }
        arrayList.add(str);
        return arrayList.size() - 1;
    }

    public final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.f27965g = 0;
            this.f27967i = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i8 = this.f27965g;
        if (i8 == -1) {
            return;
        }
        RunnableC3144b runnableC3144b = this.f27970l;
        Handler handler = this.f27969k;
        if (i8 == 0) {
            if (actionMasked == 5) {
                this.f27965g = 5;
                this.f27968j = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                handler.postDelayed(runnableC3144b, ((Long) C3099q.f26624d.f26627c.a(Q7.f15896n4)).longValue());
                return;
            }
            return;
        }
        if (i8 == 5) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z7 = false;
                for (int i9 = 0; i9 < historySize; i9++) {
                    z7 |= !d(motionEvent.getHistoricalX(0, i9), motionEvent.getHistoricalY(0, i9), motionEvent.getHistoricalX(1, i9), motionEvent.getHistoricalY(1, i9));
                }
                if (d(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z7) {
                    return;
                }
            }
            this.f27965g = -1;
            handler.removeCallbacks(runnableC3144b);
        }
    }

    public final void b() {
        Context context = this.f27959a;
        try {
            if (!(context instanceof Activity)) {
                h.f("Can not create dialog without Activity Context");
                return;
            }
            l lVar = l.f25980A;
            String str = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(lVar.f25993m.a())) {
                str = "Creative preview";
            }
            String str2 = true != lVar.f25993m.i() ? "Troubleshooting" : "Troubleshooting (enabled)";
            ArrayList arrayList = new ArrayList();
            final int iE = e("Ad information", arrayList, true);
            final int iE2 = e(str, arrayList, true);
            final int iE3 = e(str2, arrayList, true);
            boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.w8)).booleanValue();
            final int iE4 = e("Open ad inspector", arrayList, zBooleanValue);
            final int iE5 = e("Ad inspector settings", arrayList, zBooleanValue);
            AlertDialog.Builder builderI = O.i(context);
            builderI.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: o3.f
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i8) {
                    final C3151i c3151i = this.f27946G;
                    c3151i.getClass();
                    if (i8 != iE) {
                        if (i8 == iE2) {
                            h.b("Debug mode [Creative Preview] selected.");
                            AbstractC1988se.f20906a.execute(new RunnableC3144b(c3151i, 3));
                            return;
                        }
                        final int i9 = 1;
                        if (i8 == iE3) {
                            h.b("Debug mode [Troubleshooting] selected.");
                            AbstractC1988se.f20906a.execute(new RunnableC3144b(c3151i, i9));
                            return;
                        }
                        int i10 = iE4;
                        final int i11 = 0;
                        C1895qo c1895qo = c3151i.f27960b;
                        if (i8 == i10) {
                            final C1936re c1936re = AbstractC1988se.f20910e;
                            C1936re c1936re2 = AbstractC1988se.f20906a;
                            if (c1895qo.f()) {
                                c1936re.execute(new RunnableC3144b(c3151i, 6));
                                return;
                            } else {
                                c1936re2.execute(new Runnable() { // from class: o3.c
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i12 = i11;
                                        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = c1936re;
                                        C3151i c3151i2 = c3151i;
                                        switch (i12) {
                                            case 0:
                                                c3151i2.getClass();
                                                l lVar2 = l.f25980A;
                                                C3154l c3154l = lVar2.f25993m;
                                                String str3 = c3151i2.f27962d;
                                                String str4 = c3151i2.f27963e;
                                                Context context2 = c3151i2.f27959a;
                                                if (!c3154l.g(context2, str3, str4)) {
                                                    lVar2.f25993m.c(context2, c3151i2.f27962d, c3151i2.f27963e);
                                                } else {
                                                    ((C1936re) interfaceExecutorServiceC1504jC).execute(new RunnableC3144b(c3151i2, 4));
                                                }
                                                break;
                                            default:
                                                c3151i2.getClass();
                                                l lVar3 = l.f25980A;
                                                C3154l c3154l2 = lVar3.f25993m;
                                                String str5 = c3151i2.f27962d;
                                                String str6 = c3151i2.f27963e;
                                                Context context3 = c3151i2.f27959a;
                                                if (!c3154l2.g(context3, str5, str6)) {
                                                    lVar3.f25993m.c(context3, c3151i2.f27962d, c3151i2.f27963e);
                                                } else {
                                                    ((C1936re) interfaceExecutorServiceC1504jC).execute(new RunnableC3144b(c3151i2, 5));
                                                }
                                                break;
                                        }
                                    }
                                });
                                return;
                            }
                        }
                        if (i8 == iE5) {
                            final C1936re c1936re3 = AbstractC1988se.f20910e;
                            C1936re c1936re4 = AbstractC1988se.f20906a;
                            if (c1895qo.f()) {
                                c1936re3.execute(new RunnableC3144b(c3151i, i11));
                                return;
                            } else {
                                c1936re4.execute(new Runnable() { // from class: o3.c
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i12 = i9;
                                        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = c1936re3;
                                        C3151i c3151i2 = c3151i;
                                        switch (i12) {
                                            case 0:
                                                c3151i2.getClass();
                                                l lVar2 = l.f25980A;
                                                C3154l c3154l = lVar2.f25993m;
                                                String str3 = c3151i2.f27962d;
                                                String str4 = c3151i2.f27963e;
                                                Context context2 = c3151i2.f27959a;
                                                if (!c3154l.g(context2, str3, str4)) {
                                                    lVar2.f25993m.c(context2, c3151i2.f27962d, c3151i2.f27963e);
                                                } else {
                                                    ((C1936re) interfaceExecutorServiceC1504jC).execute(new RunnableC3144b(c3151i2, 4));
                                                }
                                                break;
                                            default:
                                                c3151i2.getClass();
                                                l lVar3 = l.f25980A;
                                                C3154l c3154l2 = lVar3.f25993m;
                                                String str5 = c3151i2.f27962d;
                                                String str6 = c3151i2.f27963e;
                                                Context context3 = c3151i2.f27959a;
                                                if (!c3154l2.g(context3, str5, str6)) {
                                                    lVar3.f25993m.c(context3, c3151i2.f27962d, c3151i2.f27963e);
                                                } else {
                                                    ((C1936re) interfaceExecutorServiceC1504jC).execute(new RunnableC3144b(c3151i2, 5));
                                                }
                                                break;
                                        }
                                    }
                                });
                                return;
                            }
                        }
                        return;
                    }
                    Context context2 = c3151i.f27959a;
                    if (!(context2 instanceof Activity)) {
                        h.f("Can not create dialog without Activity Context");
                        return;
                    }
                    String str3 = c3151i.f27961c;
                    final String str4 = "No debug information";
                    if (!TextUtils.isEmpty(str3)) {
                        Uri uriBuild = new Uri.Builder().encodedQuery(str3.replaceAll("\\+", "%20")).build();
                        StringBuilder sb = new StringBuilder();
                        O o4 = l.f25980A.f25983c;
                        HashMap mapL = O.l(uriBuild);
                        for (String str5 : mapL.keySet()) {
                            sb.append(str5);
                            sb.append(" = ");
                            sb.append((String) mapL.get(str5));
                            sb.append("\n\n");
                        }
                        String strTrim = sb.toString().trim();
                        if (!TextUtils.isEmpty(strTrim)) {
                            str4 = strTrim;
                        }
                    }
                    O o7 = l.f25980A.f25983c;
                    AlertDialog.Builder builderI2 = O.i(context2);
                    builderI2.setMessage(str4);
                    builderI2.setTitle("Ad Information");
                    builderI2.setPositiveButton("Share", new DialogInterface.OnClickListener() { // from class: o3.d
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface2, int i12) {
                            C3151i c3151i2 = c3151i;
                            c3151i2.getClass();
                            O o8 = l.f25980A.f25983c;
                            O.p(c3151i2.f27959a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str4), "Share via"));
                        }
                    });
                    builderI2.setNegativeButton("Close", new DialogInterfaceOnClickListenerC3147e());
                    builderI2.create().show();
                }
            });
            builderI.create().show();
        } catch (WindowManager.BadTokenException e8) {
            I.l(HttpUrl.FRAGMENT_ENCODE_SET, e8);
        }
    }

    public final void c(Context context) {
        final int i8;
        ArrayList arrayList = new ArrayList();
        int i9 = 1;
        int iE = e("None", arrayList, true);
        final int iE2 = e("Shake", arrayList, true);
        final int iE3 = e("Flick", arrayList, true);
        int iOrdinal = this.f27960b.f20634r.ordinal();
        if (iOrdinal != 1) {
            i8 = iOrdinal != 2 ? iE : iE3;
        } else {
            i8 = iE2;
        }
        O o4 = l.f25980A.f25983c;
        AlertDialog.Builder builderI = O.i(context);
        final AtomicInteger atomicInteger = new AtomicInteger(i8);
        builderI.setTitle("Setup gesture");
        builderI.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i8, new DialogInterfaceOnClickListenerC3149g(atomicInteger, 0));
        builderI.setNegativeButton("Dismiss", new DialogInterfaceOnClickListenerC3149g(this, i9));
        builderI.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: o3.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                C3151i c3151i = this.f27954G;
                c3151i.getClass();
                AtomicInteger atomicInteger2 = atomicInteger;
                if (atomicInteger2.get() != i8) {
                    int i11 = atomicInteger2.get();
                    int i12 = iE2;
                    C1895qo c1895qo = c3151i.f27960b;
                    if (i11 == i12) {
                        c1895qo.k(EnumC1687mo.f19997H, true);
                    } else if (atomicInteger2.get() == iE3) {
                        c1895qo.k(EnumC1687mo.f19998I, true);
                    } else {
                        c1895qo.k(EnumC1687mo.f19996G, true);
                    }
                }
                c3151i.b();
            }
        });
        builderI.setOnCancelListener(new DialogInterfaceOnCancelListenerC0398j(this, 1));
        builderI.create().show();
    }

    public final boolean d(float f8, float f9, float f10, float f11) {
        float fAbs = Math.abs(this.f27967i.x - f8);
        int i8 = this.f27966h;
        return fAbs < ((float) i8) && Math.abs(this.f27967i.y - f9) < ((float) i8) && Math.abs(this.f27968j.x - f10) < ((float) i8) && Math.abs(this.f27968j.y - f11) < ((float) i8);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f27961c);
        sb.append(",DebugSignal: ");
        sb.append(this.f27964f);
        sb.append(",AFMA Version: ");
        sb.append(this.f27963e);
        sb.append(",Ad Unit ID: ");
        return r.j(sb, this.f27962d, "}");
    }
}
