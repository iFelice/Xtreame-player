package com.google.android.gms.ads;

import R3.b;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.InterfaceC1519jc;
import p090l3.C3071c;
import p090l3.C3093n;
import p090l3.C3097p;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class AdActivity extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public InterfaceC1519jc f11632G;

    @Override // android.app.Activity
    public final void onActivityResult(int i8, int i9, Intent intent) {
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.Q0(i8, i9, intent);
            }
        } catch (Exception e8) {
            h.i("#007 Could not call remote method.", e8);
        }
        super.onActivityResult(i8, i9, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null && !interfaceC1519jc.Q()) {
                return;
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
        super.onBackPressed();
        try {
            InterfaceC1519jc interfaceC1519jc2 = this.f11632G;
            if (interfaceC1519jc2 != null) {
                interfaceC1519jc2.zzi();
            }
        } catch (RemoteException e9) {
            h.i("#007 Could not call remote method.", e9);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.p1(new b(configuration));
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3093n c3093n = C3097p.f26618f.f26620b;
        c3093n.getClass();
        C3071c c3071c = new C3071c(c3093n, this);
        Intent intent = getIntent();
        boolean booleanExtra = false;
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            booleanExtra = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        } else {
            h.d("useClientJar flag not found in activity intent extras.");
        }
        InterfaceC1519jc interfaceC1519jc = (InterfaceC1519jc) c3071c.d(this, booleanExtra);
        this.f11632G = interfaceC1519jc;
        if (interfaceC1519jc == null) {
            h.i("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            interfaceC1519jc.P1(bundle);
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.zzm();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.k();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i8, String[] strArr, int[] iArr) {
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.k1(i8, strArr, iArr);
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.zzq();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.zzr();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.c2(bundle);
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.e();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.n();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            InterfaceC1519jc interfaceC1519jc = this.f11632G;
            if (interfaceC1519jc != null) {
                interfaceC1519jc.h();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i8) {
        super.setContentView(i8);
        InterfaceC1519jc interfaceC1519jc = this.f11632G;
        if (interfaceC1519jc != null) {
            try {
                interfaceC1519jc.f();
            } catch (RemoteException e8) {
                h.i("#007 Could not call remote method.", e8);
            }
        }
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        InterfaceC1519jc interfaceC1519jc = this.f11632G;
        if (interfaceC1519jc != null) {
            try {
                interfaceC1519jc.f();
            } catch (RemoteException e8) {
                h.i("#007 Could not call remote method.", e8);
            }
        }
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        InterfaceC1519jc interfaceC1519jc = this.f11632G;
        if (interfaceC1519jc != null) {
            try {
                interfaceC1519jc.f();
            } catch (RemoteException e8) {
                h.i("#007 Could not call remote method.", e8);
            }
        }
    }
}
