package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.Display;
import android.view.WindowManager;
import android.view.accessibility.CaptioningManager;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1568kO extends C1059ag {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f19607l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f19608m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f19609n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f19610o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f19611p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f19612q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f19613r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final SparseArray f19614s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final SparseBooleanArray f19615t;

    public C1568kO() {
        this.f19614s = new SparseArray();
        this.f19615t = new SparseBooleanArray();
        this.f19607l = true;
        this.f19608m = true;
        this.f19609n = true;
        this.f19610o = true;
        this.f19611p = true;
        this.f19612q = true;
        this.f19613r = true;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00df  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f0  */
    public C1568kO(Context context) {
        CaptioningManager captioningManager;
        Point point;
        String strI;
        int i8 = Et.f13234a;
        if ((i8 >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
            this.f17905i = 1088;
            Locale locale = captioningManager.getLocale();
            if (locale != null) {
                this.f17904h = AbstractC2073uA.w(locale.toLanguageTag());
            }
        }
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getClass();
            display = windowManager.getDefaultDisplay();
        }
        if (display.getDisplayId() == 0 && Et.e(context)) {
            if (i8 < 28) {
                strI = Et.i("sys.display-size");
            } else {
                strI = Et.i("vendor.display-size");
            }
            if (!TextUtils.isEmpty(strI)) {
                try {
                    String[] strArrSplit = strI.trim().split("x", -1);
                    if (strArrSplit.length == 2) {
                        int i9 = Integer.parseInt(strArrSplit[0]);
                        int i10 = Integer.parseInt(strArrSplit[1]);
                        if (i9 > 0 && i10 > 0) {
                            point = new Point(i9, i10);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                Zo.c("Util", "Invalid display size: ".concat(String.valueOf(strI)));
                if (!"Sony".equals(Et.f13236c) && Et.f13237d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                    point = new Point(3840, 2160);
                } else {
                    point = new Point();
                    if (i8 >= 23) {
                        Display.Mode mode = display.getMode();
                        point.x = mode.getPhysicalWidth();
                        point.y = mode.getPhysicalHeight();
                    } else {
                        display.getRealSize(point);
                    }
                }
            } else if (!"Sony".equals(Et.f13236c)) {
                point = new Point();
                if (i8 >= 23) {
                    Display.Mode mode2 = display.getMode();
                    point.x = mode2.getPhysicalWidth();
                    point.y = mode2.getPhysicalHeight();
                } else {
                    display.getRealSize(point);
                }
            } else {
                point = new Point();
                if (i8 >= 23) {
                    Display.Mode mode3 = display.getMode();
                    point.x = mode3.getPhysicalWidth();
                    point.y = mode3.getPhysicalHeight();
                } else {
                    display.getRealSize(point);
                }
            }
        } else {
            point = new Point();
            if (i8 >= 23) {
                Display.Mode mode4 = display.getMode();
                point.x = mode4.getPhysicalWidth();
                point.y = mode4.getPhysicalHeight();
            } else {
                display.getRealSize(point);
            }
        }
        int i11 = point.x;
        int i12 = point.y;
        this.f17897a = i11;
        this.f17898b = i12;
        this.f17899c = true;
        this.f19614s = new SparseArray();
        this.f19615t = new SparseBooleanArray();
        this.f19607l = true;
        this.f19608m = true;
        this.f19609n = true;
        this.f19610o = true;
        this.f19611p = true;
        this.f19612q = true;
        this.f19613r = true;
    }

    public /* synthetic */ C1568kO(C1620lO c1620lO) {
        super(c1620lO);
        this.f19607l = c1620lO.f19789l;
        this.f19608m = c1620lO.f19790m;
        this.f19609n = c1620lO.f19791n;
        this.f19610o = c1620lO.f19792o;
        this.f19611p = c1620lO.f19793p;
        this.f19612q = c1620lO.f19794q;
        this.f19613r = c1620lO.f19795r;
        SparseArray sparseArray = new SparseArray();
        int i8 = 0;
        while (true) {
            SparseArray sparseArray2 = c1620lO.f19796s;
            if (i8 < sparseArray2.size()) {
                sparseArray.put(sparseArray2.keyAt(i8), new HashMap((Map) sparseArray2.valueAt(i8)));
                i8++;
            } else {
                this.f19614s = sparseArray;
                this.f19615t = c1620lO.f19797t.clone();
                return;
            }
        }
    }
}
