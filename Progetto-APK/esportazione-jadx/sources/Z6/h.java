package Z6;

import java.text.ParsePosition;
import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Pattern f8500a;

    @Override // Z6.i
    public final boolean a() {
        return false;
    }

    @Override // Z6.i
    public final boolean b(m mVar, Calendar calendar, String str, ParsePosition parsePosition, int i8) {
        Matcher matcher = this.f8500a.matcher(str.substring(parsePosition.getIndex()));
        if (!matcher.lookingAt()) {
            parsePosition.setErrorIndex(parsePosition.getIndex());
            return false;
        }
        parsePosition.setIndex(matcher.end(1) + parsePosition.getIndex());
        c(calendar, matcher.group(1));
        return true;
    }

    public abstract void c(Calendar calendar, String str);

    public String toString() {
        return getClass().getSimpleName() + " [pattern=" + this.f8500a + "]";
    }
}
