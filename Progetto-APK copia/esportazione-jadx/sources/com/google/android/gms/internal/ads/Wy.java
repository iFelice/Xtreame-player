package com.google.android.gms.internal.ads;

import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public abstract class Wy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f17352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ClipData f17353b;

    static {
        f17352a = Build.VERSION.SDK_INT > 22 ? 67108864 : 0;
        f17353b = ClipData.newIntent(HttpUrl.FRAGMENT_ENCODE_SET, new Intent());
    }

    public static Intent a(int i8, Intent intent) {
        boolean z7 = true;
        AbstractC2987b.B0("Cannot set any dangerous parts of intent to be mutable.", (i8 & 88) == 0);
        AbstractC2987b.B0("Cannot use Intent.FILL_IN_ACTION unless the action is marked as mutable.", (i8 & 1) == 0 || b(0, 3));
        AbstractC2987b.B0("Cannot use Intent.FILL_IN_DATA unless the data is marked as mutable.", (i8 & 2) == 0 || b(0, 5));
        AbstractC2987b.B0("Cannot use Intent.FILL_IN_CATEGORIES unless the category is marked as mutable.", (i8 & 4) == 0 || b(0, 9));
        AbstractC2987b.B0("Cannot use Intent.FILL_IN_CLIP_DATA unless the clip data is marked as mutable.", (i8 & 128) == 0 || b(0, 17));
        AbstractC2987b.B0("Must set component on Intent.", intent.getComponent() != null);
        if (b(0, 1)) {
            AbstractC2987b.B0("Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set.", !b(i8, 67108864));
        } else {
            if (Build.VERSION.SDK_INT >= 23 && !b(i8, 67108864)) {
                z7 = false;
            }
            AbstractC2987b.B0("Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable.", z7);
        }
        Intent intent2 = new Intent(intent);
        if (Build.VERSION.SDK_INT < 23 || !b(i8, 67108864)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!b(0, 3) && intent2.getAction() == null) {
                intent2.setAction(HttpUrl.FRAGMENT_ENCODE_SET);
            }
            if (!b(0, 9) && intent2.getCategories() == null) {
                intent2.addCategory(HttpUrl.FRAGMENT_ENCODE_SET);
            }
            if (!b(0, 5) && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, "*/*");
            }
            if (!b(0, 17) && intent2.getClipData() == null) {
                intent2.setClipData(f17353b);
            }
        }
        return intent2;
    }

    public static boolean b(int i8, int i9) {
        return (i8 & i9) == i9;
    }
}
