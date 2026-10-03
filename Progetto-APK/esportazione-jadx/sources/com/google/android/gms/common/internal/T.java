package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class T {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Uri f11815d = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f11818c;

    public T(String str, String str2, boolean z7) {
        com.bumptech.glide.c.e(str);
        this.f11816a = str;
        com.bumptech.glide.c.e(str2);
        this.f11817b = str2;
        this.f11818c = z7;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008b  */
    public final Intent a(Context context) throws L {
        Bundle bundleCall;
        PendingIntent pendingIntent;
        Intent intent = null;
        String str = this.f11816a;
        if (str == null) {
            return new Intent().setComponent(null);
        }
        if (this.f11818c) {
            Bundle bundle = new Bundle();
            bundle.putString("serviceActionBundleKey", str);
            try {
                ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(f11815d);
                if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                    throw new RemoteException("Failed to acquire ContentProviderClient");
                }
                try {
                    bundleCall = contentProviderClientAcquireUnstableContentProviderClient.call("serviceIntentCall", null, bundle);
                    try {
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                    } catch (RemoteException e8) {
                        e = e8;
                        Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                    } catch (IllegalArgumentException e9) {
                        e = e9;
                        Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                    }
                    if (bundleCall == null && (intent = (Intent) bundleCall.getParcelable("serviceResponseIntentKey")) == null && (pendingIntent = (PendingIntent) bundleCall.getParcelable("serviceMissingResolutionIntentKey")) != null) {
                        Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action " + str + " but has possible resolution");
                        throw new L(new J3.b(25, pendingIntent));
                    }
                    if (intent == null) {
                        Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(str)));
                    }
                } catch (Throwable th) {
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                    throw th;
                }
            } catch (RemoteException e10) {
                e = e10;
                bundleCall = null;
            } catch (IllegalArgumentException e11) {
                e = e11;
                bundleCall = null;
            }
            Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
            if (bundleCall == null) {
            }
            if (intent == null) {
                Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(str)));
            }
        }
        return intent == null ? new Intent(str).setPackage(this.f11817b) : intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof T)) {
            return false;
        }
        T t7 = (T) obj;
        return U4.a.c(this.f11816a, t7.f11816a) && U4.a.c(this.f11817b, t7.f11817b) && U4.a.c(null, null) && this.f11818c == t7.f11818c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11816a, this.f11817b, null, 4225, Boolean.valueOf(this.f11818c)});
    }

    public final String toString() {
        String str = this.f11816a;
        if (str != null) {
            return str;
        }
        com.bumptech.glide.c.h(null);
        throw null;
    }
}
