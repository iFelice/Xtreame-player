package com.google.android.gms.common.api;

import K3.C0233f;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;

/* JADX INFO: loaded from: classes.dex */
@KeepName
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f11749H = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f11750G = 0;

    @Override // android.app.Activity
    public final void onActivityResult(int i8, int i9, Intent intent) {
        super.onActivityResult(i8, i9, intent);
        if (i8 == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f11750G = 0;
            setResult(i9, intent);
            if (booleanExtra) {
                C0233f c0233fF = C0233f.f(this);
                if (i9 == -1) {
                    X3.d dVar = c0233fF.f4550S;
                    dVar.sendMessage(dVar.obtainMessage(3));
                } else if (i9 == 0) {
                    c0233fF.h(new J3.b(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i8 == 2) {
            this.f11750G = 0;
            setResult(i9, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f11750G = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f11750G = bundle.getInt("resolution");
        }
        if (this.f11750G != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                Log.e("GoogleApiActivity", "Activity started without extras");
                finish();
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
            Integer num = (Integer) extras.get("error_code");
            if (pendingIntent == null && num == null) {
                Log.e("GoogleApiActivity", "Activity started without resolution");
                finish();
                return;
            }
            if (pendingIntent == null) {
                com.bumptech.glide.c.h(num);
                J3.e.f4143d.e(this, num.intValue(), this);
                this.f11750G = 1;
                return;
            }
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                this.f11750G = 1;
            } catch (ActivityNotFoundException e8) {
                if (extras.getBoolean("notify_manager", true)) {
                    C0233f.f(this).h(new J3.b(22, null), getIntent().getIntExtra("failing_client_id", -1));
                } else {
                    String strG = p000a.r.g("Activity not found while launching ", pendingIntent.toString(), ".");
                    if (Build.FINGERPRINT.contains("generic")) {
                        strG = strG.concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                    }
                    Log.e("GoogleApiActivity", strG, e8);
                }
                this.f11750G = 1;
                finish();
            } catch (IntentSender.SendIntentException e9) {
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e9);
                finish();
            }
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f11750G);
        super.onSaveInstanceState(bundle);
    }
}
