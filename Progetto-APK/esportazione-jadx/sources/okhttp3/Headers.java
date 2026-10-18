package okhttp3;

import D6.e;
import I6.k;
import N.P;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import p155t6.c;
import p162u6.q;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Headers implements Iterable<c>, E6.a {
    public static final Companion Companion = new Companion(null);
    private final String[] namesAndValues;

    public static final class Builder {
        private final List<String> namesAndValues = new ArrayList(20);

        public final Builder add(String str) {
            q0.h(str, "line");
            int iI0 = k.I0(str, ':', 0, false, 6);
            if (iI0 == -1) {
                throw new IllegalArgumentException("Unexpected header: ".concat(str).toString());
            }
            String strSubstring = str.substring(0, iI0);
            q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String string = k.X0(strSubstring).toString();
            String strSubstring2 = str.substring(iI0 + 1);
            q0.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
            add(string, strSubstring2);
            return this;
        }

        public final Builder addAll(Headers headers) {
            q0.h(headers, "headers");
            int size = headers.size();
            for (int i8 = 0; i8 < size; i8++) {
                addLenient$okhttp(headers.name(i8), headers.value(i8));
            }
            return this;
        }

        public final Builder addLenient$okhttp(String str) {
            q0.h(str, "line");
            int iI0 = k.I0(str, ':', 1, false, 4);
            if (iI0 != -1) {
                String strSubstring = str.substring(0, iI0);
                q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                String strSubstring2 = str.substring(iI0 + 1);
                q0.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(strSubstring, strSubstring2);
            } else if (str.charAt(0) == ':') {
                String strSubstring3 = str.substring(1);
                q0.g(strSubstring3, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(HttpUrl.FRAGMENT_ENCODE_SET, strSubstring3);
            } else {
                addLenient$okhttp(HttpUrl.FRAGMENT_ENCODE_SET, str);
            }
            return this;
        }

        public final Builder addUnsafeNonAscii(String str, String str2) {
            q0.h(str, "name");
            q0.h(str2, "value");
            Headers.Companion.checkName(str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Headers build() {
            return new Headers((String[]) this.namesAndValues.toArray(new String[0]), null);
        }

        public final String get(String str) {
            q0.h(str, "name");
            int size = this.namesAndValues.size() - 2;
            int I7 = p190y4.k.I(size, 0, -2);
            if (I7 > size) {
                return null;
            }
            while (!k.F0(str, this.namesAndValues.get(size))) {
                if (size == I7) {
                    return null;
                }
                size -= 2;
            }
            return this.namesAndValues.get(size + 1);
        }

        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        public final Builder removeAll(String str) {
            q0.h(str, "name");
            int i8 = 0;
            while (i8 < this.namesAndValues.size()) {
                if (k.F0(str, this.namesAndValues.get(i8))) {
                    this.namesAndValues.remove(i8);
                    this.namesAndValues.remove(i8);
                    i8 -= 2;
                }
                i8 += 2;
            }
            return this;
        }

        public final Builder set(String str, Date date) {
            q0.h(str, "name");
            q0.h(date, "value");
            set(str, DatesKt.toHttpDateString(date));
            return this;
        }

        public final Builder set(String str, Instant instant) {
            q0.h(str, "name");
            q0.h(instant, "value");
            return set(str, new Date(instant.toEpochMilli()));
        }

        public final Builder set(String str, String str2) {
            q0.h(str, "name");
            q0.h(str2, "value");
            Companion companion = Headers.Companion;
            companion.checkName(str);
            companion.checkValue(str2, str);
            removeAll(str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Builder add(String str, String str2) {
            q0.h(str, "name");
            q0.h(str2, "value");
            Companion companion = Headers.Companion;
            companion.checkName(str);
            companion.checkValue(str2, str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Builder add(String str, Date date) {
            q0.h(str, "name");
            q0.h(date, "value");
            add(str, DatesKt.toHttpDateString(date));
            return this;
        }

        public final Builder addLenient$okhttp(String str, String str2) {
            q0.h(str, "name");
            q0.h(str2, "value");
            this.namesAndValues.add(str);
            this.namesAndValues.add(k.X0(str2).toString());
            return this;
        }

        public final Builder add(String str, Instant instant) {
            q0.h(str, "name");
            q0.h(instant, "value");
            add(str, new Date(instant.toEpochMilli()));
            return this;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkName(String str) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("name is empty".toString());
            }
            int length = str.length();
            for (int i8 = 0; i8 < length; i8++) {
                char cCharAt = str.charAt(i8);
                if ('!' > cCharAt || cCharAt >= 127) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i8), str).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkValue(String str, String str2) {
            int length = str.length();
            for (int i8 = 0; i8 < length; i8++) {
                char cCharAt = str.charAt(i8);
                if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(Util.format("Unexpected char %#04x at %d in %s value", Integer.valueOf(cCharAt), Integer.valueOf(i8), str2));
                    sb.append(Util.isSensitiveHeader(str2) ? HttpUrl.FRAGMENT_ENCODE_SET : ": ".concat(str));
                    throw new IllegalArgumentException(sb.toString().toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String get(String[] strArr, String str) {
            int length = strArr.length - 2;
            int I7 = p190y4.k.I(length, 0, -2);
            if (I7 > length) {
                return null;
            }
            while (!k.F0(str, strArr[length])) {
                if (length == I7) {
                    return null;
                }
                length -= 2;
            }
            return strArr[length + 1];
        }

        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m61deprecated_of(String... strArr) {
            q0.h(strArr, "namesAndValues");
            return of((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final Headers of(String... strArr) {
            q0.h(strArr, "namesAndValues");
            if (strArr.length % 2 != 0) {
                throw new IllegalArgumentException("Expected alternating header names and values".toString());
            }
            String[] strArr2 = (String[]) strArr.clone();
            int length = strArr2.length;
            int i8 = 0;
            for (int i9 = 0; i9 < length; i9++) {
                String str = strArr2[i9];
                if (str == null) {
                    throw new IllegalArgumentException("Headers cannot be null".toString());
                }
                strArr2[i9] = k.X0(str).toString();
            }
            int I7 = p190y4.k.I(0, strArr2.length - 1, 2);
            if (I7 >= 0) {
                while (true) {
                    String str2 = strArr2[i8];
                    String str3 = strArr2[i8 + 1];
                    checkName(str2);
                    checkValue(str3, str2);
                    if (i8 == I7) {
                        break;
                    }
                    i8 += 2;
                }
            }
            return new Headers(strArr2, null);
        }

        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m60deprecated_of(Map<String, String> map) {
            q0.h(map, "headers");
            return of(map);
        }

        public final Headers of(Map<String, String> map) {
            q0.h(map, "<this>");
            String[] strArr = new String[map.size() * 2];
            int i8 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                String string = k.X0(key).toString();
                String string2 = k.X0(value).toString();
                checkName(string);
                checkValue(string2, string);
                strArr[i8] = string;
                strArr[i8 + 1] = string2;
                i8 += 2;
            }
            return new Headers(strArr, null);
        }
    }

    public /* synthetic */ Headers(String[] strArr, e eVar) {
        this(strArr);
    }

    public static final Headers of(Map<String, String> map) {
        return Companion.of(map);
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m59deprecated_size() {
        return size();
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        int length2 = strArr.length;
        for (int i8 = 0; i8 < length2; i8++) {
            length += (long) this.namesAndValues[i8].length();
        }
        return length;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
    }

    public final String get(String str) {
        q0.h(str, "name");
        return Companion.get(this.namesAndValues, str);
    }

    public final Date getDate(String str) {
        q0.h(str, "name");
        String str2 = get(str);
        if (str2 != null) {
            return DatesKt.toHttpDateOrNull(str2);
        }
        return null;
    }

    public final Instant getInstant(String str) {
        q0.h(str, "name");
        Date date = getDate(str);
        if (date != null) {
            return date.toInstant();
        }
        return null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    public Iterator<c> iterator() {
        int size = size();
        c[] cVarArr = new c[size];
        for (int i8 = 0; i8 < size; i8++) {
            cVarArr[i8] = new c(name(i8), value(i8));
        }
        return new P(cVarArr);
    }

    public final String name(int i8) {
        return this.namesAndValues[i8 * 2];
    }

    public final Set<String> names() {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        q0.g(comparator, "CASE_INSENSITIVE_ORDER");
        TreeSet treeSet = new TreeSet(comparator);
        int size = size();
        for (int i8 = 0; i8 < size; i8++) {
            treeSet.add(name(i8));
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
        q0.g(setUnmodifiableSet, "unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        List<String> namesAndValues$okhttp = builder.getNamesAndValues$okhttp();
        String[] strArr = this.namesAndValues;
        q0.h(namesAndValues$okhttp, "<this>");
        q0.h(strArr, "elements");
        List listAsList = Arrays.asList(strArr);
        q0.g(listAsList, "asList(...)");
        namesAndValues$okhttp.addAll(listAsList);
        return builder;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final Map<String, List<String>> toMultimap() {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        q0.g(comparator, "CASE_INSENSITIVE_ORDER");
        TreeMap treeMap = new TreeMap(comparator);
        int size = size();
        for (int i8 = 0; i8 < size; i8++) {
            String strName = name(i8);
            Locale locale = Locale.US;
            q0.g(locale, "US");
            String lowerCase = strName.toLowerCase(locale);
            q0.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(value(i8));
        }
        return treeMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i8 = 0; i8 < size; i8++) {
            String strName = name(i8);
            String strValue = value(i8);
            sb.append(strName);
            sb.append(": ");
            if (Util.isSensitiveHeader(strName)) {
                strValue = "██";
            }
            sb.append(strValue);
            sb.append("\n");
        }
        String string = sb.toString();
        q0.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String value(int i8) {
        return this.namesAndValues[(i8 * 2) + 1];
    }

    public final List<String> values(String str) {
        q0.h(str, "name");
        int size = size();
        ArrayList arrayList = null;
        for (int i8 = 0; i8 < size; i8++) {
            if (k.F0(str, name(i8))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i8));
            }
        }
        if (arrayList == null) {
            return q.f30542G;
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        q0.g(listUnmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
        return listUnmodifiableList;
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    public static final Headers of(String... strArr) {
        return Companion.of(strArr);
    }
}
