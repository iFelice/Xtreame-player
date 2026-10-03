package Z6;

import java.text.ParsePosition;
import java.util.Calendar;

/* JADX INFO: renamed from: Z6.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0473e extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f8495a;

    public C0473e(String str) {
        this.f8495a = str;
    }

    @Override // Z6.i
    public final boolean a() {
        return false;
    }

    @Override // Z6.i
    public final boolean b(m mVar, Calendar calendar, String str, ParsePosition parsePosition, int i8) {
        int i9 = 0;
        while (true) {
            String str2 = this.f8495a;
            if (i9 >= str2.length()) {
                parsePosition.setIndex(parsePosition.getIndex() + str2.length());
                return true;
            }
            int index = parsePosition.getIndex() + i9;
            if (index == str.length()) {
                parsePosition.setErrorIndex(index);
                return false;
            }
            if (str2.charAt(i9) != str.charAt(index)) {
                parsePosition.setErrorIndex(index);
                return false;
            }
            i9++;
        }
    }

    public final String toString() {
        return p000a.r.j(new StringBuilder("CopyQuotedStrategy [formatField="), this.f8495a, "]");
    }
}
