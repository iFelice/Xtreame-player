package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public abstract class My extends SQLiteOpenHelper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public My(Context context, String str) {
        super(context, true == str.equals(HttpUrl.FRAGMENT_ENCODE_SET) ? null : str, (SQLiteDatabase.CursorFactory) null, 1);
        int i8 = com.google.android.gms.internal.measurement.D.f22893d;
    }

    public My(Context context, String str, int i8) {
        super(context, true == str.equals(HttpUrl.FRAGMENT_ENCODE_SET) ? null : str, (SQLiteDatabase.CursorFactory) null, i8);
    }
}
