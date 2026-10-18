package androidx.core.graphics.drawable;

import Z1.a;
import Z1.b;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f9003a = aVar.f(iconCompat.f9003a, 1);
        byte[] bArr = iconCompat.f9005c;
        if (aVar.e(2)) {
            Parcel parcel = ((b) aVar).f8218e;
            int i8 = parcel.readInt();
            if (i8 < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i8];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f9005c = bArr;
        iconCompat.f9006d = aVar.g(iconCompat.f9006d, 3);
        iconCompat.f9007e = aVar.f(iconCompat.f9007e, 4);
        iconCompat.f9008f = aVar.f(iconCompat.f9008f, 5);
        iconCompat.f9009g = (ColorStateList) aVar.g(iconCompat.f9009g, 6);
        String string = iconCompat.f9011i;
        if (aVar.e(7)) {
            string = ((b) aVar).f8218e.readString();
        }
        iconCompat.f9011i = string;
        String string2 = iconCompat.f9012j;
        if (aVar.e(8)) {
            string2 = ((b) aVar).f8218e.readString();
        }
        iconCompat.f9012j = string2;
        iconCompat.f9010h = PorterDuff.Mode.valueOf(iconCompat.f9011i);
        switch (iconCompat.f9003a) {
            case -1:
                Parcelable parcelable = iconCompat.f9006d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.f9004b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.f9006d;
                if (parcelable2 != null) {
                    iconCompat.f9004b = parcelable2;
                } else {
                    byte[] bArr3 = iconCompat.f9005c;
                    iconCompat.f9004b = bArr3;
                    iconCompat.f9003a = 3;
                    iconCompat.f9007e = 0;
                    iconCompat.f9008f = bArr3.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.f9005c, Charset.forName("UTF-16"));
                iconCompat.f9004b = str;
                if (iconCompat.f9003a == 2 && iconCompat.f9012j == null) {
                    iconCompat.f9012j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f9004b = iconCompat.f9005c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, a aVar) {
        aVar.getClass();
        iconCompat.f9011i = iconCompat.f9010h.name();
        switch (iconCompat.f9003a) {
            case -1:
                iconCompat.f9006d = (Parcelable) iconCompat.f9004b;
                break;
            case 1:
            case 5:
                iconCompat.f9006d = (Parcelable) iconCompat.f9004b;
                break;
            case 2:
                iconCompat.f9005c = ((String) iconCompat.f9004b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f9005c = (byte[]) iconCompat.f9004b;
                break;
            case 4:
            case 6:
                iconCompat.f9005c = iconCompat.f9004b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i8 = iconCompat.f9003a;
        if (-1 != i8) {
            aVar.j(i8, 1);
        }
        byte[] bArr = iconCompat.f9005c;
        if (bArr != null) {
            aVar.i(2);
            int length = bArr.length;
            Parcel parcel = ((b) aVar).f8218e;
            parcel.writeInt(length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.f9006d;
        if (parcelable != null) {
            aVar.k(parcelable, 3);
        }
        int i9 = iconCompat.f9007e;
        if (i9 != 0) {
            aVar.j(i9, 4);
        }
        int i10 = iconCompat.f9008f;
        if (i10 != 0) {
            aVar.j(i10, 5);
        }
        ColorStateList colorStateList = iconCompat.f9009g;
        if (colorStateList != null) {
            aVar.k(colorStateList, 6);
        }
        String str = iconCompat.f9011i;
        if (str != null) {
            aVar.i(7);
            ((b) aVar).f8218e.writeString(str);
        }
        String str2 = iconCompat.f9012j;
        if (str2 != null) {
            aVar.i(8);
            ((b) aVar).f8218e.writeString(str2);
        }
    }
}
