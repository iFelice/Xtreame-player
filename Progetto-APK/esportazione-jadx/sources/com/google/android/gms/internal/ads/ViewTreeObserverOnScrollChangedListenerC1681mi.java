package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import okhttp3.HttpUrl;
import org.json.JSONObject;
import p090l3.C3097p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnScrollChangedListenerC1681mi extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f19982G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public View f19983H;

    public ViewTreeObserverOnScrollChangedListenerC1681mi(Context context) {
        super(context);
        this.f19982G = context;
    }

    public static ViewTreeObserverOnScrollChangedListenerC1681mi a(Context context, View view, Ov ov) {
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        Resources resources;
        DisplayMetrics displayMetrics;
        ViewTreeObserverOnScrollChangedListenerC1681mi viewTreeObserverOnScrollChangedListenerC1681mi = new ViewTreeObserverOnScrollChangedListenerC1681mi(context);
        boolean zIsEmpty = ov.f15286u.isEmpty();
        Context context2 = viewTreeObserverOnScrollChangedListenerC1681mi.f19982G;
        if (!zIsEmpty && (resources = context2.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            Pv pv = (Pv) ov.f15286u.get(0);
            float f8 = pv.f15499a;
            float f9 = displayMetrics.density;
            viewTreeObserverOnScrollChangedListenerC1681mi.setLayoutParams(new FrameLayout.LayoutParams((int) (f8 * f9), (int) (pv.f15500b * f9)));
        }
        viewTreeObserverOnScrollChangedListenerC1681mi.f19983H = view;
        viewTreeObserverOnScrollChangedListenerC1681mi.addView(view);
        C0650Aa c0650Aa = p083k3.l.f25980A.f26006z;
        ViewTreeObserverOnScrollChangedListenerC2300ye viewTreeObserverOnScrollChangedListenerC2300ye = new ViewTreeObserverOnScrollChangedListenerC2300ye(viewTreeObserverOnScrollChangedListenerC1681mi, viewTreeObserverOnScrollChangedListenerC1681mi);
        View view2 = (View) ((WeakReference) viewTreeObserverOnScrollChangedListenerC2300ye.f19929G).get();
        ViewTreeObserver viewTreeObserver3 = null;
        if (view2 == null || (viewTreeObserver = view2.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            viewTreeObserver = null;
        }
        if (viewTreeObserver != null) {
            viewTreeObserverOnScrollChangedListenerC2300ye.a1(viewTreeObserver);
        }
        ViewTreeObserverOnGlobalLayoutListenerC2248xe viewTreeObserverOnGlobalLayoutListenerC2248xe = new ViewTreeObserverOnGlobalLayoutListenerC2248xe(viewTreeObserverOnScrollChangedListenerC1681mi, viewTreeObserverOnScrollChangedListenerC1681mi);
        View view3 = (View) ((WeakReference) viewTreeObserverOnGlobalLayoutListenerC2248xe.f19929G).get();
        if (view3 != null && (viewTreeObserver2 = view3.getViewTreeObserver()) != null && viewTreeObserver2.isAlive()) {
            viewTreeObserver3 = viewTreeObserver2;
        }
        if (viewTreeObserver3 != null) {
            viewTreeObserverOnGlobalLayoutListenerC2248xe.a1(viewTreeObserver3);
        }
        RelativeLayout relativeLayout = new RelativeLayout(context2);
        JSONObject jSONObject = ov.f15261h0;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("header");
        if (jSONObjectOptJSONObject != null) {
            viewTreeObserverOnScrollChangedListenerC1681mi.b(jSONObjectOptJSONObject, relativeLayout, 10);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("footer");
        if (jSONObjectOptJSONObject2 != null) {
            viewTreeObserverOnScrollChangedListenerC1681mi.b(jSONObjectOptJSONObject2, relativeLayout, 12);
        }
        viewTreeObserverOnScrollChangedListenerC1681mi.addView(relativeLayout);
        return viewTreeObserverOnScrollChangedListenerC1681mi;
    }

    public final void b(JSONObject jSONObject, RelativeLayout relativeLayout, int i8) {
        Context context = this.f19982G;
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", HttpUrl.FRAGMENT_ENCODE_SET));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        double dOptDouble = jSONObject.optDouble("padding", 0.0d);
        C3097p c3097p = C3097p.f26618f;
        p120p3.d dVar = c3097p.f26619a;
        int iO = p120p3.d.o(context, (int) dOptDouble);
        textView.setPadding(0, iO, 0, iO);
        double dOptDouble2 = jSONObject.optDouble("height", 15.0d);
        p120p3.d dVar2 = c3097p.f26619a;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, p120p3.d.o(context, (int) dOptDouble2));
        layoutParams.addRule(i8);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f19983H.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f19983H.setY(-iArr[1]);
    }
}
