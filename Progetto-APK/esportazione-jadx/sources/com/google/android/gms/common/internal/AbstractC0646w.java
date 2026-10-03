package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;
import p039f.AbstractC2987b;
import pe.hf.black20.R;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0646w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p132r.m f11902a = new p132r.m();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Locale f11903b;

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            Context context2 = Q3.c.a(context).f23010G;
            return context2.getPackageManager().getApplicationLabel(context2.getPackageManager().getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String b(Context context, int i8) {
        Resources resources = context.getResources();
        String strA = a(context);
        if (i8 == 1) {
            return resources.getString(R.string.common_google_play_services_install_text, strA);
        }
        if (i8 == 2) {
            return AbstractC2987b.v(context) ? resources.getString(R.string.common_google_play_services_wear_update_text) : resources.getString(R.string.common_google_play_services_update_text, strA);
        }
        if (i8 == 3) {
            return resources.getString(R.string.common_google_play_services_enable_text, strA);
        }
        if (i8 == 5) {
            return d(context, "common_google_play_services_invalid_account_text", strA);
        }
        if (i8 == 7) {
            return d(context, "common_google_play_services_network_error_text", strA);
        }
        if (i8 == 9) {
            return resources.getString(R.string.common_google_play_services_unsupported_text, strA);
        }
        if (i8 == 20) {
            return d(context, "common_google_play_services_restricted_profile_text", strA);
        }
        switch (i8) {
            case 16:
                return d(context, "common_google_play_services_api_unavailable_text", strA);
            case 17:
                return d(context, "common_google_play_services_sign_in_failed_text", strA);
            case 18:
                return resources.getString(R.string.common_google_play_services_updating_text, strA);
            default:
                return resources.getString(R.string.common_google_play_services_unknown_issue, strA);
        }
    }

    public static String c(Context context, int i8) {
        Resources resources = context.getResources();
        switch (i8) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return e(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return e(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                Log.e("GoogleApiAvailability", "Unexpected error code " + i8);
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return e(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return e(context, "common_google_play_services_restricted_profile_title");
        }
    }

    public static String d(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String strE = e(context, str);
        if (strE == null) {
            strE = resources.getString(R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, strE, str2);
    }

    public static String e(Context context, String str) {
        Resources resourcesForApplication;
        p132r.m mVar = f11902a;
        synchronized (mVar) {
            try {
                Configuration configuration = context.getResources().getConfiguration();
                Locale locale = (Build.VERSION.SDK_INT >= 24 ? new J.g(new J.j(D.q.d(configuration))) : J.g.a(configuration.locale)).f4053a.get(0);
                if (!locale.equals(f11903b)) {
                    mVar.clear();
                    f11903b = locale;
                }
                String str2 = (String) mVar.get(str);
                if (str2 != null) {
                    return str2;
                }
                int i8 = J3.i.f4146e;
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
                } catch (PackageManager.NameNotFoundException unused) {
                    resourcesForApplication = null;
                }
                if (resourcesForApplication == null) {
                    return null;
                }
                int identifier = resourcesForApplication.getIdentifier(str, "string", "com.google.android.gms");
                if (identifier == 0) {
                    Log.w("GoogleApiAvailability", "Missing resource: ".concat(str));
                    return null;
                }
                String string = resourcesForApplication.getString(identifier);
                if (TextUtils.isEmpty(string)) {
                    Log.w("GoogleApiAvailability", "Got empty resource: ".concat(str));
                    return null;
                }
                f11902a.put(str, string);
                return string;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
