package com.google.android.gms.flags.impl;

import E3.f;
import R3.a;
import T3.b;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.ads.Cw;
import p167v3.CallableC3196d;

/* JADX INFO: loaded from: classes.dex */
@DynamiteApi
public class FlagProviderImpl extends b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f11908G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f11909H;

    public FlagProviderImpl() {
        attachInterface(this, "com.google.android.gms.flags.IFlagProvider");
        this.f11908G = false;
    }

    @Override // T3.c
    public boolean getBooleanFlagValue(String str, boolean z7, int i8) {
        if (!this.f11908G) {
            return z7;
        }
        SharedPreferences sharedPreferences = this.f11909H;
        Boolean boolValueOf = Boolean.valueOf(z7);
        try {
            boolValueOf = (Boolean) Cw.I(new CallableC3196d(sharedPreferences, str, boolValueOf, 4));
        } catch (Exception e8) {
            String strValueOf = String.valueOf(e8.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return boolValueOf.booleanValue();
    }

    @Override // T3.c
    public int getIntFlagValue(String str, int i8, int i9) {
        if (!this.f11908G) {
            return i8;
        }
        SharedPreferences sharedPreferences = this.f11909H;
        Integer numValueOf = Integer.valueOf(i8);
        try {
            numValueOf = (Integer) Cw.I(new CallableC3196d(sharedPreferences, str, numValueOf, 5));
        } catch (Exception e8) {
            String strValueOf = String.valueOf(e8.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return numValueOf.intValue();
    }

    @Override // T3.c
    public long getLongFlagValue(String str, long j8, int i8) {
        if (!this.f11908G) {
            return j8;
        }
        SharedPreferences sharedPreferences = this.f11909H;
        Long lValueOf = Long.valueOf(j8);
        try {
            lValueOf = (Long) Cw.I(new CallableC3196d(sharedPreferences, str, lValueOf, 6));
        } catch (Exception e8) {
            String strValueOf = String.valueOf(e8.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return lValueOf.longValue();
    }

    @Override // T3.c
    public String getStringFlagValue(String str, String str2, int i8) {
        if (!this.f11908G) {
            return str2;
        }
        try {
            return (String) Cw.I(new CallableC3196d(this.f11909H, str, str2, 7));
        } catch (Exception e8) {
            String strValueOf = String.valueOf(e8.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
            return str2;
        }
    }

    @Override // T3.c
    public void init(a aVar) {
        Context context = (Context) R3.b.v0(aVar);
        if (this.f11908G) {
            return;
        }
        try {
            this.f11909H = f.F(context.createPackageContext("com.google.android.gms", 0));
            this.f11908G = true;
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e8) {
            String strValueOf = String.valueOf(e8.getMessage());
            Log.w("FlagProviderImpl", strValueOf.length() != 0 ? "Could not retrieve sdk flags, continuing with defaults: ".concat(strValueOf) : new String("Could not retrieve sdk flags, continuing with defaults: "));
        }
    }
}
