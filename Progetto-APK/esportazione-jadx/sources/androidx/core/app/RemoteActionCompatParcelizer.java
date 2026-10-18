package androidx.core.app;

import Z1.a;
import Z1.b;
import Z1.c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        c cVarH = remoteActionCompat.f8989a;
        if (aVar.e(1)) {
            cVarH = aVar.h();
        }
        remoteActionCompat.f8989a = (IconCompat) cVarH;
        CharSequence charSequence = remoteActionCompat.f8990b;
        if (aVar.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((b) aVar).f8218e);
        }
        remoteActionCompat.f8990b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f8991c;
        if (aVar.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((b) aVar).f8218e);
        }
        remoteActionCompat.f8991c = charSequence2;
        remoteActionCompat.f8992d = (PendingIntent) aVar.g(remoteActionCompat.f8992d, 4);
        boolean z7 = remoteActionCompat.f8993e;
        if (aVar.e(5)) {
            z7 = ((b) aVar).f8218e.readInt() != 0;
        }
        remoteActionCompat.f8993e = z7;
        boolean z8 = remoteActionCompat.f8994f;
        if (aVar.e(6)) {
            z8 = ((b) aVar).f8218e.readInt() != 0;
        }
        remoteActionCompat.f8994f = z8;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, a aVar) {
        aVar.getClass();
        IconCompat iconCompat = remoteActionCompat.f8989a;
        aVar.i(1);
        aVar.l(iconCompat);
        CharSequence charSequence = remoteActionCompat.f8990b;
        aVar.i(2);
        Parcel parcel = ((b) aVar).f8218e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.f8991c;
        aVar.i(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        aVar.k(remoteActionCompat.f8992d, 4);
        boolean z7 = remoteActionCompat.f8993e;
        aVar.i(5);
        parcel.writeInt(z7 ? 1 : 0);
        boolean z8 = remoteActionCompat.f8994f;
        aVar.i(6);
        parcel.writeInt(z8 ? 1 : 0);
    }
}
