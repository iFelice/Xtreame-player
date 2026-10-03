package J3;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesMissingManifestValueException;
import com.google.android.gms.common.internal.K;
import com.google.android.gms.common.internal.W;
import java.util.concurrent.atomic.AtomicBoolean;
import p039f.AbstractC2987b;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f4144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f4145b;

    static {
        AtomicBoolean atomicBoolean = j.f4147a;
        f4144a = 12451000;
        f4145b = new f();
    }

    public static int a(Context context) {
        AtomicBoolean atomicBoolean = j.f4147a;
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    public static void d(Context context) throws g, h {
        AtomicBoolean atomicBoolean = j.f4147a;
        f fVar = f4145b;
        int iC = fVar.c(context, 11925000);
        if (iC != 0) {
            Intent intentB = fVar.b(iC, context, "e");
            Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + iC);
            if (intentB != null) {
                throw new h("Google Play Services not available");
            }
            throw new g();
        }
    }

    public Intent b(int i8, Context context, String str) {
        if (i8 != 1 && i8 != 2) {
            if (i8 != 3) {
                return null;
            }
            int i9 = W.f11833a;
            Uri uriFromParts = Uri.fromParts("package", "com.google.android.gms", null);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(uriFromParts);
            return intent;
        }
        if (context != null && AbstractC2987b.v(context)) {
            int i10 = W.f11833a;
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        }
        StringBuilder sb = new StringBuilder("gcore_");
        sb.append(f4144a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(Q3.c.a(context).c(0, context.getPackageName()).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String string = sb.toString();
        int i11 = W.f11833a;
        Intent intent3 = new Intent("android.intent.action.VIEW");
        Uri.Builder builderAppendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
        if (!TextUtils.isEmpty(string)) {
            builderAppendQueryParameter.appendQueryParameter("pcampaignid", string);
        }
        intent3.setData(builderAppendQueryParameter.build());
        intent3.setPackage("com.android.vending");
        intent3.addFlags(524288);
        return intent3;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0197 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:74:0x013b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0162  */
    /* JADX WARN: Code duplicated, block: B:82:0x0164  */
    /* JADX WARN: Code duplicated, block: B:85:0x0169  */
    /* JADX WARN: Code duplicated, block: B:87:0x016d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0193  */
    /* JADX WARN: Code duplicated, block: B:97:0x01b4  */
    /* JADX WARN: Instruction removed from duplicated block: B:87:0x016d, please report this as an issue */
    public int c(Context context, int i8) {
        boolean z7;
        PackageInfo packageInfo;
        int i9;
        int i10;
        ApplicationInfo applicationInfo;
        AtomicBoolean atomicBoolean = j.f4147a;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !j.f4150d.get()) {
            synchronized (K.f11799a) {
                try {
                    if (!K.f11800b) {
                        K.f11800b = true;
                        try {
                            Bundle bundle = Q3.c.a(context).b(128, context.getPackageName()).metaData;
                            if (bundle != null) {
                                bundle.getString("com.google.app.id");
                                K.f11801c = bundle.getInt("com.google.android.gms.version");
                            }
                        } catch (PackageManager.NameNotFoundException e8) {
                            Log.wtf("MetadataValueReader", "This should never happen.", e8);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i11 = K.f11801c;
            if (i11 == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (i11 != 12451000) {
                throw new GooglePlayServicesIncorrectManifestValueException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + f4144a + " but found " + i11 + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
        int i12 = 0;
        if (AbstractC2987b.v(context)) {
            z7 = false;
        } else {
            if (AbstractC2987b.f25032J == null) {
                AbstractC2987b.f25032J = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
            }
            if (AbstractC2987b.f25032J.booleanValue()) {
                z7 = false;
            } else {
                z7 = true;
            }
        }
        com.bumptech.glide.c.b(i8 >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z7) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            k.b(context);
            if (k.g(packageInfo2, true)) {
                if (z7) {
                    com.bumptech.glide.c.h(packageInfo);
                    if (!k.g(packageInfo, true)) {
                        Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                    } else if (z7 || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                        i9 = packageInfo2.versionCode;
                        if (i9 == -1) {
                            i10 = -1;
                        } else {
                            i10 = i9 / 1000;
                        }
                        if (i10 < (i8 != -1 ? i8 / 1000 : -1)) {
                            Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i8 + " but found " + i9);
                            i12 = 2;
                        } else {
                            applicationInfo = packageInfo2.applicationInfo;
                            if (applicationInfo == null) {
                                try {
                                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                                } catch (PackageManager.NameNotFoundException e9) {
                                    Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e9);
                                    i12 = 1;
                                }
                            }
                            if (!applicationInfo.enabled) {
                                i12 = 3;
                            }
                        }
                    } else {
                        Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                    }
                } else {
                    if (z7) {
                    }
                    i9 = packageInfo2.versionCode;
                    if (i9 == -1) {
                        i10 = -1;
                    } else {
                        i10 = i9 / 1000;
                    }
                    if (i10 < (i8 != -1 ? i8 / 1000 : -1)) {
                        Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i8 + " but found " + i9);
                        i12 = 2;
                    } else {
                        applicationInfo = packageInfo2.applicationInfo;
                        if (applicationInfo == null) {
                            applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                        }
                        if (!applicationInfo.enabled) {
                            i12 = 3;
                        }
                    }
                }
                if (i12 == 18 || (i12 == 1 && j.c(context))) {
                    return 18;
                }
                return i12;
            }
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
            i12 = 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
        }
        if (i12 == 18) {
            return i12;
        }
        return 18;
    }
}
