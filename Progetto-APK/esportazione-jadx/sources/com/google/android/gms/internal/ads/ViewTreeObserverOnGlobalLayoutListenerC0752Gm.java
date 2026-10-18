package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.Collections;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Gm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0752Gm extends AbstractBinderC2328z5 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, J8, InterfaceC1673ma {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public View f13628G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public p090l3.B0 f13629H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C0721El f13630I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f13631J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f13632K;

    public final void A3() {
        View view;
        C0721El c0721El = this.f13630I;
        if (c0721El == null || (view = this.f13628G) == null) {
            return;
        }
        c0721El.b(view, Collections.emptyMap(), Collections.emptyMap(), C0721El.n(this.f13628G));
    }

    public final void B3() {
        View view = this.f13628G;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f13628G);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        A3();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        A3();
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        C0751Gl c0751Gl;
        p090l3.B0 b8 = null;
        r8A = null;
        r8A = null;
        R8 r8A = null;
        InterfaceC1777oa c1725na = null;
        if (i8 == 3) {
            com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
            if (this.f13631J) {
                p120p3.h.d("getVideoController: Instream ad should not be used after destroyed");
            } else {
                b8 = this.f13629H;
            }
            parcel2.writeNoException();
            A5.e(parcel2, b8);
            return true;
        }
        if (i8 == 4) {
            com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
            B3();
            C0721El c0721El = this.f13630I;
            if (c0721El != null) {
                c0721El.w();
            }
            this.f13630I = null;
            this.f13628G = null;
            this.f13629H = null;
            this.f13631J = true;
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 5) {
            R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                c1725na = iInterfaceQueryLocalInterface instanceof InterfaceC1777oa ? (InterfaceC1777oa) iInterfaceQueryLocalInterface : new C1725na(strongBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback", 0);
            }
            A5.b(parcel);
            z3(aVarJ0, c1725na);
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 6) {
            R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
            A5.b(parcel);
            com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
            z3(aVarJ1, new BinderC0737Fm("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback"));
            parcel2.writeNoException();
            return true;
        }
        if (i8 != 7) {
            return false;
        }
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        if (this.f13631J) {
            p120p3.h.d("getVideoController: Instream ad should not be used after destroyed");
        } else {
            C0721El c0721El2 = this.f13630I;
            if (c0721El2 != null && (c0751Gl = c0721El2.f13182C) != null) {
                r8A = c0751Gl.a();
            }
        }
        parcel2.writeNoException();
        A5.e(parcel2, r8A);
        return true;
    }

    public final void z3(R3.a aVar, InterfaceC1777oa interfaceC1777oa) {
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        if (this.f13631J) {
            p120p3.h.d("Instream ad can not be shown after destroy().");
            try {
                interfaceC1777oa.d(2);
                return;
            } catch (RemoteException e8) {
                p120p3.h.i("#007 Could not call remote method.", e8);
                return;
            }
        }
        View view = this.f13628G;
        if (view == null || this.f13629H == null) {
            p120p3.h.d("Instream internal error: ".concat(view == null ? "can not get video view." : "can not get video controller."));
            try {
                interfaceC1777oa.d(0);
                return;
            } catch (RemoteException e9) {
                p120p3.h.i("#007 Could not call remote method.", e9);
                return;
            }
        }
        if (this.f13632K) {
            p120p3.h.d("Instream ad should not be used again.");
            try {
                interfaceC1777oa.d(1);
                return;
            } catch (RemoteException e10) {
                p120p3.h.i("#007 Could not call remote method.", e10);
                return;
            }
        }
        this.f13632K = true;
        B3();
        ((ViewGroup) R3.b.v0(aVar)).addView(this.f13628G, new ViewGroup.LayoutParams(-1, -1));
        C0650Aa c0650Aa = p083k3.l.f25980A.f26006z;
        ViewTreeObserverOnGlobalLayoutListenerC2248xe viewTreeObserverOnGlobalLayoutListenerC2248xe = new ViewTreeObserverOnGlobalLayoutListenerC2248xe(this.f13628G, this);
        View view2 = (View) ((WeakReference) viewTreeObserverOnGlobalLayoutListenerC2248xe.f19929G).get();
        ViewTreeObserver viewTreeObserver3 = null;
        if (view2 == null || (viewTreeObserver = view2.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            viewTreeObserver = null;
        }
        if (viewTreeObserver != null) {
            viewTreeObserverOnGlobalLayoutListenerC2248xe.a1(viewTreeObserver);
        }
        ViewTreeObserverOnScrollChangedListenerC2300ye viewTreeObserverOnScrollChangedListenerC2300ye = new ViewTreeObserverOnScrollChangedListenerC2300ye(this.f13628G, this);
        View view3 = (View) ((WeakReference) viewTreeObserverOnScrollChangedListenerC2300ye.f19929G).get();
        if (view3 != null && (viewTreeObserver2 = view3.getViewTreeObserver()) != null && viewTreeObserver2.isAlive()) {
            viewTreeObserver3 = viewTreeObserver2;
        }
        if (viewTreeObserver3 != null) {
            viewTreeObserverOnScrollChangedListenerC2300ye.a1(viewTreeObserver3);
        }
        A3();
        try {
            interfaceC1777oa.a();
        } catch (RemoteException e11) {
            p120p3.h.i("#007 Could not call remote method.", e11);
        }
    }
}
