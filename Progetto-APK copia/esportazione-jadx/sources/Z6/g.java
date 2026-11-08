package Z6;

import java.text.ParsePosition;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class g extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8499a;

    public g(int i8) {
        this.f8499a = i8;
    }

    @Override // Z6.i
    public final boolean a() {
        return true;
    }

    @Override // Z6.i
    public final boolean b(m mVar, Calendar calendar, String str, ParsePosition parsePosition, int i8) {
        int index = parsePosition.getIndex();
        int length = str.length();
        if (i8 == 0) {
            while (index < length && Character.isWhitespace(str.charAt(index))) {
                index++;
            }
            parsePosition.setIndex(index);
        } else {
            int i9 = i8 + index;
            if (length > i9) {
                length = i9;
            }
        }
        while (index < length && Character.isDigit(str.charAt(index))) {
            index++;
        }
        if (parsePosition.getIndex() == index) {
            parsePosition.setErrorIndex(index);
            return false;
        }
        int i10 = Integer.parseInt(str.substring(parsePosition.getIndex(), index));
        parsePosition.setIndex(index);
        calendar.set(this.f8499a, c(mVar, i10));
        return true;
    }

    public final String toString() {
        return p000a.r.h(new StringBuilder("NumberStrategy [field="), this.f8499a, "]");
    }

    public int c(m mVar, int i8) {
        return i8;
    }
}
