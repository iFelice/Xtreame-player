package androidx.leanback.widget.picker;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.Log;
import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import p009b0.a;
import p017c0.e;
import p017c0.f;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public class DatePicker extends e {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final int[] f9322m0 = {5, 2, 1};

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public String f9323W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public f f9324a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public f f9325b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public f f9326c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f9327d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f9328e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f9329f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final SimpleDateFormat f9330g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final u f9331h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final Calendar f9332i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final Calendar f9333j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final Calendar f9334k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final Calendar f9335l0;

    public DatePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9330g0 = new SimpleDateFormat("MM/dd/yyyy");
        Locale locale = Locale.getDefault();
        getContext().getResources();
        u uVar = new u(locale);
        this.f9331h0 = uVar;
        this.f9335l0 = AbstractC2617p2.g(this.f9335l0, (Locale) uVar.f27278H);
        this.f9332i0 = AbstractC2617p2.g(this.f9332i0, (Locale) this.f9331h0.f27278H);
        this.f9333j0 = AbstractC2617p2.g(this.f9333j0, (Locale) this.f9331h0.f27278H);
        this.f9334k0 = AbstractC2617p2.g(this.f9334k0, (Locale) this.f9331h0.f27278H);
        f fVar = this.f9324a0;
        if (fVar != null) {
            fVar.f10591d = (String[]) this.f9331h0.f27279I;
            a(this.f9327d0, fVar);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f9810d);
        String string = typedArrayObtainStyledAttributes.getString(0);
        String string2 = typedArrayObtainStyledAttributes.getString(1);
        this.f9335l0.clear();
        if (TextUtils.isEmpty(string) || !g(string, this.f9335l0)) {
            this.f9335l0.set(1900, 0, 1);
        }
        this.f9332i0.setTimeInMillis(this.f9335l0.getTimeInMillis());
        this.f9335l0.clear();
        if (TextUtils.isEmpty(string2) || !g(string2, this.f9335l0)) {
            this.f9335l0.set(2100, 0, 1);
        }
        this.f9333j0.setTimeInMillis(this.f9335l0.getTimeInMillis());
        String string3 = typedArrayObtainStyledAttributes.getString(2);
        setDatePickerFormat(TextUtils.isEmpty(string3) ? new String(DateFormat.getDateFormatOrder(context)) : string3);
    }

    public final boolean g(String str, Calendar calendar) {
        try {
            calendar.setTime(this.f9330g0.parse(str));
            return true;
        } catch (ParseException unused) {
            Log.w("DatePicker", "Date: " + str + " not in format: MM/dd/yyyy");
            return false;
        }
    }

    public long getDate() {
        return this.f9334k0.getTimeInMillis();
    }

    public String getDatePickerFormat() {
        return this.f9323W;
    }

    public long getMaxDate() {
        return this.f9333j0.getTimeInMillis();
    }

    public long getMinDate() {
        return this.f9332i0.getTimeInMillis();
    }

    public void setDatePickerFormat(String str) {
        int i8 = 6;
        u uVar = this.f9331h0;
        String str2 = TextUtils.isEmpty(str) ? new String(DateFormat.getDateFormatOrder(getContext())) : str;
        if (TextUtils.equals(this.f9323W, str2)) {
            return;
        }
        this.f9323W = str2;
        String bestDateTimePattern = DateFormat.getBestDateTimePattern((Locale) uVar.f27278H, str2);
        if (TextUtils.isEmpty(bestDateTimePattern)) {
            bestDateTimePattern = "MM/dd/yyyy";
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        char[] cArr = {'Y', 'y', 'M', 'm', 'D', 'd'};
        int i9 = 0;
        boolean z7 = false;
        char c8 = 0;
        while (i9 < bestDateTimePattern.length()) {
            char cCharAt = bestDateTimePattern.charAt(i9);
            if (cCharAt != ' ') {
                if (cCharAt != '\'') {
                    if (!z7) {
                        int i10 = 0;
                        while (true) {
                            if (i10 >= i8) {
                                sb.append(cCharAt);
                                break;
                            }
                            if (cCharAt == cArr[i10]) {
                                if (cCharAt == c8) {
                                    break;
                                }
                                arrayList.add(sb.toString());
                                sb.setLength(0);
                                break;
                            }
                            i10++;
                            i8 = 6;
                        }
                    } else {
                        sb.append(cCharAt);
                    }
                    c8 = cCharAt;
                } else if (z7) {
                    z7 = false;
                } else {
                    sb.setLength(0);
                    z7 = true;
                }
            }
            i9++;
            i8 = 6;
        }
        arrayList.add(sb.toString());
        if (arrayList.size() != str2.length() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " must equal the size of datePickerFormat: " + str2.length() + " + 1");
        }
        setSeparators(arrayList);
        this.f9325b0 = null;
        this.f9324a0 = null;
        this.f9326c0 = null;
        this.f9327d0 = -1;
        this.f9328e0 = -1;
        this.f9329f0 = -1;
        String upperCase = str2.toUpperCase();
        ArrayList arrayList2 = new ArrayList(3);
        for (int i11 = 0; i11 < upperCase.length(); i11++) {
            char cCharAt2 = upperCase.charAt(i11);
            if (cCharAt2 == 'D') {
                if (this.f9325b0 != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                f fVar = new f();
                this.f9325b0 = fVar;
                arrayList2.add(fVar);
                this.f9325b0.f10592e = "%02d";
                this.f9328e0 = i11;
            } else if (cCharAt2 != 'M') {
                if (cCharAt2 != 'Y') {
                    throw new IllegalArgumentException("datePicker format error");
                }
                if (this.f9326c0 != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                f fVar2 = new f();
                this.f9326c0 = fVar2;
                arrayList2.add(fVar2);
                this.f9329f0 = i11;
                this.f9326c0.f10592e = "%d";
            } else {
                if (this.f9324a0 != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                f fVar3 = new f();
                this.f9324a0 = fVar3;
                arrayList2.add(fVar3);
                this.f9324a0.f10591d = (String[]) uVar.f27279I;
                this.f9327d0 = i11;
            }
        }
        setColumns(arrayList2);
        post(new p017c0.a(0, this, false));
    }

    public void setMaxDate(long j8) {
        this.f9335l0.setTimeInMillis(j8);
        if (this.f9335l0.get(1) != this.f9333j0.get(1) || this.f9335l0.get(6) == this.f9333j0.get(6)) {
            this.f9333j0.setTimeInMillis(j8);
            if (this.f9334k0.after(this.f9333j0)) {
                this.f9334k0.setTimeInMillis(this.f9333j0.getTimeInMillis());
            }
            post(new p017c0.a(0, this, false));
        }
    }

    public void setMinDate(long j8) {
        this.f9335l0.setTimeInMillis(j8);
        if (this.f9335l0.get(1) != this.f9332i0.get(1) || this.f9335l0.get(6) == this.f9332i0.get(6)) {
            this.f9332i0.setTimeInMillis(j8);
            if (this.f9334k0.before(this.f9332i0)) {
                this.f9334k0.setTimeInMillis(this.f9332i0.getTimeInMillis());
            }
            post(new p017c0.a(0, this, false));
        }
    }
}
