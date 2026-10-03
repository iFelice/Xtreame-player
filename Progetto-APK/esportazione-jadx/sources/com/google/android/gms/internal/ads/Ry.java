package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class Ry {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Ry f16380c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f16382b;

    public Ry(Context context) {
        this.f16381a = context.getPackageName();
        this.f16382b = context.getSharedPreferences("paid_storage_sp", 0);
    }

    public final void a(Object obj, String str) throws IOException {
        boolean zCommit;
        boolean z7 = obj instanceof String;
        String str2 = this.f16381a;
        SharedPreferences sharedPreferences = this.f16382b;
        if (z7) {
            zCommit = sharedPreferences.edit().putString(str, (String) obj).commit();
        } else if (obj instanceof Long) {
            zCommit = sharedPreferences.edit().putLong(str, ((Long) obj).longValue()).commit();
        } else {
            if (!(obj instanceof Boolean)) {
                if (obj instanceof Integer) {
                    zCommit = sharedPreferences.edit().putInt(str, ((Integer) obj).intValue()).commit();
                } else {
                    Log.e("GpidLifecycleSPHandler", "Unexpected object class " + String.valueOf(obj.getClass()) + " for app " + str2);
                }
                throw new IOException(com.google.protobuf.U2.m("Failed to store ", str, " for app ", str2));
            }
            zCommit = sharedPreferences.edit().putBoolean(str, ((Boolean) obj).booleanValue()).commit();
        }
        if (zCommit) {
            return;
        }
        throw new IOException(com.google.protobuf.U2.m("Failed to store ", str, " for app ", str2));
    }

    public final void b(String str) {
        if (this.f16382b.edit().remove(str).commit()) {
            return;
        }
        StringBuilder sbP = com.google.protobuf.U2.p("Failed to remove ", str, " for app ");
        sbP.append(this.f16381a);
        throw new IOException(sbP.toString());
    }
}
