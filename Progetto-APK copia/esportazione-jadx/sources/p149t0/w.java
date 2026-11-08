package p149t0;

import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p000a.r;
import p086l.C3061x;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class w extends l {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Pattern f30251M = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Pattern f30252N = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final Pattern f30253O = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    /* JADX WARN: Code duplicated, block: B:28:0x009f A[PHI: r2
      0x009f: PHI (r2v16 java.util.regex.Matcher) = (r2v10 java.util.regex.Matcher), (r2v8 java.util.regex.Matcher) binds: [B:26:0x0095, B:22:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x00a2  */
    public static w a(File file, long j8, long j9, C3061x c3061x) {
        File file2;
        long j10;
        String strGroup;
        File fileB;
        String name = file.getName();
        if (name.endsWith(".v3.exo")) {
            file2 = file;
        } else {
            String name2 = file.getName();
            Matcher matcher = f30252N.matcher(name2);
            if (matcher.matches()) {
                strGroup = matcher.group(1);
                strGroup.getClass();
                String str = M.f28050a;
                int length = strGroup.length();
                int iEnd = 0;
                int i8 = 0;
                for (int i9 = 0; i9 < length; i9++) {
                    if (strGroup.charAt(i9) == '%') {
                        i8++;
                    }
                }
                if (i8 != 0) {
                    int i10 = length - (i8 * 2);
                    StringBuilder sb = new StringBuilder(i10);
                    Matcher matcher2 = M.f28055f.matcher(strGroup);
                    while (i8 > 0 && matcher2.find()) {
                        String strGroup2 = matcher2.group(1);
                        strGroup2.getClass();
                        char c8 = (char) Integer.parseInt(strGroup2, 16);
                        sb.append((CharSequence) strGroup, iEnd, matcher2.start());
                        sb.append(c8);
                        iEnd = matcher2.end();
                        i8--;
                    }
                    if (iEnd < length) {
                        sb.append((CharSequence) strGroup, iEnd, length);
                    }
                    if (sb.length() != i10) {
                        strGroup = null;
                    } else {
                        strGroup = sb.toString();
                    }
                }
            } else {
                matcher = f30251M.matcher(name2);
                if (matcher.matches()) {
                    strGroup = matcher.group(1);
                    strGroup.getClass();
                } else {
                    strGroup = null;
                }
            }
            if (strGroup == null) {
                fileB = null;
            } else {
                File parentFile = file.getParentFile();
                H1.j(parentFile);
                n nVarH = c3061x.h(strGroup);
                String strGroup3 = matcher.group(2);
                strGroup3.getClass();
                long j11 = Long.parseLong(strGroup3);
                String strGroup4 = matcher.group(3);
                strGroup4.getClass();
                fileB = b(parentFile, nVarH.f30219a, j11, Long.parseLong(strGroup4));
                if (!file.renameTo(fileB)) {
                    fileB = null;
                }
            }
            if (fileB == null) {
                return null;
            }
            file2 = fileB;
            name = fileB.getName();
        }
        Matcher matcher3 = f30253O.matcher(name);
        if (!matcher3.matches()) {
            return null;
        }
        String strGroup5 = matcher3.group(1);
        strGroup5.getClass();
        String str2 = (String) ((SparseArray) c3061x.f26411H).get(Integer.parseInt(strGroup5));
        if (str2 == null) {
            return null;
        }
        long length2 = j8 == -1 ? file2.length() : j8;
        if (length2 == 0) {
            return null;
        }
        String strGroup6 = matcher3.group(2);
        strGroup6.getClass();
        long j12 = Long.parseLong(strGroup6);
        if (j9 == -9223372036854775807L) {
            String strGroup7 = matcher3.group(3);
            strGroup7.getClass();
            j10 = Long.parseLong(strGroup7);
        } else {
            j10 = j9;
        }
        return new w(str2, j12, length2, j10, file2);
    }

    public static File b(File file, int i8, long j8, long j9) {
        StringBuilder sb = new StringBuilder();
        sb.append(i8);
        sb.append(".");
        sb.append(j8);
        sb.append(".");
        return new File(file, r.i(sb, j9, ".v3.exo"));
    }
}
