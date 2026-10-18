package Z6;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: renamed from: Z6.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0470b extends Format {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C0469a f8488I = new C0469a();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C f8489G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final m f8490H;

    public C0470b(String str, TimeZone timeZone, Locale locale) {
        this.f8489G = new C(str, timeZone, locale);
        this.f8490H = new m(str, timeZone, locale);
    }

    public static C0470b a(String str) {
        return (C0470b) f8488I.a(str, null);
    }

    public final Date b(String str) throws ParseException {
        m mVar = this.f8490H;
        mVar.getClass();
        ParsePosition parsePosition = new ParsePosition(0);
        Date dateB = mVar.b(str, parsePosition);
        if (dateB != null) {
            return dateB;
        }
        Locale locale = m.f8507M;
        Locale locale2 = mVar.f8528I;
        if (!locale2.equals(locale)) {
            throw new ParseException(p148t.a.c("Unparseable date: ", str), parsePosition.getErrorIndex());
        }
        throw new ParseException("(The " + locale2 + " locale does not support dates before 1868 AD)\nUnparseable date: \"" + str, parsePosition.getErrorIndex());
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0470b) {
            return this.f8489G.equals(((C0470b) obj).f8489G);
        }
        return false;
    }

    @Override // java.text.Format
    public final StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        String string;
        C c8 = this.f8489G;
        c8.getClass();
        if (obj instanceof Date) {
            string = c8.c((Date) obj);
        } else {
            boolean z7 = obj instanceof Calendar;
            int i8 = 0;
            TimeZone timeZone = c8.f8477H;
            if (z7) {
                Calendar calendar = (Calendar) obj;
                StringBuilder sb = new StringBuilder(c8.f8480K);
                if (!calendar.getTimeZone().equals(timeZone)) {
                    calendar = (Calendar) calendar.clone();
                    calendar.setTimeZone(timeZone);
                }
                s[] sVarArr = c8.f8479J;
                int length = sVarArr.length;
                while (i8 < length) {
                    sVarArr[i8].a(sb, calendar);
                    i8++;
                }
                string = sb.toString();
            } else {
                if (!(obj instanceof Long)) {
                    throw new IllegalArgumentException("Unknown class: ".concat(obj == null ? "<null>" : obj.getClass().getName()));
                }
                long jLongValue = ((Long) obj).longValue();
                Calendar calendar2 = Calendar.getInstance(timeZone, c8.f8478I);
                calendar2.setTimeInMillis(jLongValue);
                StringBuilder sb2 = new StringBuilder(c8.f8480K);
                s[] sVarArr2 = c8.f8479J;
                int length2 = sVarArr2.length;
                while (i8 < length2) {
                    sVarArr2[i8].a(sb2, calendar2);
                    i8++;
                }
                string = sb2.toString();
            }
        }
        stringBuffer.append(string);
        return stringBuffer;
    }

    public final int hashCode() {
        return this.f8489G.hashCode();
    }

    @Override // java.text.Format
    public final Object parseObject(String str, ParsePosition parsePosition) {
        return this.f8490H.b(str, parsePosition);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FastDateFormat[");
        C c8 = this.f8489G;
        sb.append(c8.f8476G);
        sb.append(",");
        sb.append(c8.f8478I);
        sb.append(",");
        sb.append(c8.f8477H.getID());
        sb.append("]");
        return sb.toString();
    }
}
