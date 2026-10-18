package I0;

import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class u extends IOException {
    public /* synthetic */ u(IndexOutOfBoundsException indexOutOfBoundsException) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(String str, int i8) {
        super(p000a.r.g("Unable to bind a sample queue to TrackGroup with MIME type ", str, "."));
        if (i8 != 4) {
        } else {
            super(str);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(String str, int i8, IndexOutOfBoundsException indexOutOfBoundsException) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(str), indexOutOfBoundsException);
        if (i8 == 7) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(str), indexOutOfBoundsException);
            return;
        }
        if (i8 == 8) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(str), indexOutOfBoundsException);
            return;
        }
        if (i8 == 10) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(str), indexOutOfBoundsException);
        } else if (i8 != 11) {
        } else {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(str), indexOutOfBoundsException);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public u(long j8, long j9, int i8, IndexOutOfBoundsException indexOutOfBoundsException) {
        Locale locale = Locale.US;
        StringBuilder sbD = p148t.a.d("Pos: ", j8, ", limit: ");
        sbD.append(j9);
        sbD.append(", len: ");
        sbD.append(i8);
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(sbD.toString()), indexOutOfBoundsException);
    }
}
