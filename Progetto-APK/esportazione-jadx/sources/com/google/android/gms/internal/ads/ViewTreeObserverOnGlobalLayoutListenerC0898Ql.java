package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ql, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0898Ql extends AbstractBinderC2328z5 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, InterfaceViewOnClickListenerC1220dm {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final WeakReference f16120G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HashMap f16121H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final HashMap f16122I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HashMap f16123J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public C0721El f16124K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final H5 f16125L;

    public ViewTreeObserverOnGlobalLayoutListenerC0898Ql(View view, HashMap map, HashMap map2) {
        ViewTreeObserver viewTreeObserver;
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        this.f16121H = new HashMap();
        this.f16122I = new HashMap();
        this.f16123J = new HashMap();
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        C0650Aa c0650Aa = p083k3.l.f25980A.f26006z;
        ViewTreeObserverOnGlobalLayoutListenerC2248xe viewTreeObserverOnGlobalLayoutListenerC2248xe = new ViewTreeObserverOnGlobalLayoutListenerC2248xe(view, this);
        View view2 = (View) ((WeakReference) viewTreeObserverOnGlobalLayoutListenerC2248xe.f19929G).get();
        ViewTreeObserver viewTreeObserver2 = null;
        ViewTreeObserver viewTreeObserver3 = (view2 == null || (viewTreeObserver3 = view2.getViewTreeObserver()) == null || !viewTreeObserver3.isAlive()) ? null : viewTreeObserver3;
        if (viewTreeObserver3 != null) {
            viewTreeObserverOnGlobalLayoutListenerC2248xe.a1(viewTreeObserver3);
        }
        ViewTreeObserverOnScrollChangedListenerC2300ye viewTreeObserverOnScrollChangedListenerC2300ye = new ViewTreeObserverOnScrollChangedListenerC2300ye(view, this);
        View view3 = (View) ((WeakReference) viewTreeObserverOnScrollChangedListenerC2300ye.f19929G).get();
        if (view3 != null && (viewTreeObserver = view3.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            viewTreeObserver2 = viewTreeObserver;
        }
        if (viewTreeObserver2 != null) {
            viewTreeObserverOnScrollChangedListenerC2300ye.a1(viewTreeObserver2);
        }
        this.f16120G = new WeakReference(view);
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            View view4 = (View) entry.getValue();
            if (view4 != null) {
                this.f16121H.put(str, new WeakReference(view4));
                if (!"1098".equals(str) && !"3011".equals(str)) {
                    view4.setOnTouchListener(this);
                    view4.setClickable(true);
                    view4.setOnClickListener(this);
                }
            }
        }
        this.f16123J.putAll(this.f16121H);
        for (Map.Entry entry2 : map2.entrySet()) {
            View view5 = (View) entry2.getValue();
            if (view5 != null) {
                this.f16122I.put((String) entry2.getKey(), new WeakReference(view5));
                view5.setOnTouchListener(this);
                view5.setClickable(false);
            }
        }
        this.f16123J.putAll(this.f16122I);
        this.f16125L = new H5(view.getContext(), view);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized void j0(String str, View view) {
        this.f16123J.put(str, new WeakReference(view));
        if (!"1098".equals(str) && !"3011".equals(str)) {
            this.f16121H.put(str, new WeakReference(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized View n2(String str) {
        WeakReference weakReference = (WeakReference) this.f16123J.get(str);
        if (weakReference == null) {
            return null;
        }
        return (View) weakReference.get();
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        C0721El c0721El = this.f16124K;
        if (c0721El != null) {
            c0721El.c(view, zzf(), zzl(), zzm(), true);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        C0721El c0721El = this.f16124K;
        if (c0721El != null) {
            c0721El.b(zzf(), zzl(), zzm(), C0721El.n(zzf()));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        C0721El c0721El = this.f16124K;
        if (c0721El != null) {
            c0721El.b(zzf(), zzl(), zzm(), C0721El.n(zzf()));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        C0721El c0721El = this.f16124K;
        if (c0721El != null) {
            c0721El.h(view, motionEvent, zzf());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
            A5.b(parcel);
            z3(aVarJ0);
        } else if (i8 == 2) {
            zzd();
        } else {
            if (i8 != 3) {
                return false;
            }
            R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
            A5.b(parcel);
            synchronized (this) {
                try {
                    if (this.f16124K != null) {
                        Object objV0 = R3.b.v0(aVarJ1);
                        if (!(objV0 instanceof View)) {
                            p120p3.h.g("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                        }
                        this.f16124K.j((View) objV0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        parcel2.writeNoException();
        return true;
    }

    public final synchronized void z3(R3.a aVar) {
        Object objV0 = R3.b.v0(aVar);
        if (!(objV0 instanceof C0721El)) {
            p120p3.h.g("Not an instance of InternalNativeAd. This is most likely a transient error");
            return;
        }
        C0721El c0721El = this.f16124K;
        if (c0721El != null) {
            c0721El.l(this);
        }
        C0721El c0721El2 = (C0721El) objV0;
        if (!c0721El2.f13190n.d()) {
            p120p3.h.d("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
            return;
        }
        this.f16124K = c0721El2;
        c0721El2.k(this);
        this.f16124K.g(zzf());
    }

    public final synchronized void zzd() {
        C0721El c0721El = this.f16124K;
        if (c0721El != null) {
            c0721El.l(this);
            this.f16124K = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final View zzf() {
        return (View) this.f16120G.get();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final FrameLayout zzh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final H5 zzi() {
        return this.f16125L;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized R3.a zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized String zzk() {
        return "1007";
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized Map zzl() {
        return this.f16123J;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized Map zzm() {
        return this.f16121H;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized Map zzn() {
        return this.f16122I;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized JSONObject zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized JSONObject zzp() {
        C0721El c0721El = this.f16124K;
        if (c0721El == null) {
            return null;
        }
        return c0721El.z(zzf(), zzl(), zzm());
    }
}
