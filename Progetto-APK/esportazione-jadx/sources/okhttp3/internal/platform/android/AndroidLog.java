package okhttp3.internal.platform.android;

import I6.l;
import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.OkHttpClient;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2;
import p162u6.r;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
@SuppressSignatureCheck
public final class AndroidLog {
    private static final int MAX_LOG_LENGTH = 4000;
    private static final Map<String, String> knownLoggers;
    public static final AndroidLog INSTANCE = new AndroidLog();
    private static final CopyOnWriteArraySet<Logger> configuredLoggers = new CopyOnWriteArraySet<>();

    static {
        Map<String, String> linkedHashMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Package r7 = OkHttpClient.class.getPackage();
        String name = r7 != null ? r7.getName() : null;
        if (name != null) {
            linkedHashMap2.put(name, "OkHttp");
        }
        linkedHashMap2.put(OkHttpClient.class.getName(), "okhttp.OkHttpClient");
        linkedHashMap2.put(Http2.class.getName(), "okhttp.Http2");
        linkedHashMap2.put(TaskRunner.class.getName(), "okhttp.TaskRunner");
        linkedHashMap2.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        int size = linkedHashMap2.size();
        if (size != 0) {
            linkedHashMap = size != 1 ? new LinkedHashMap<>(linkedHashMap2) : k.i0(linkedHashMap2);
        } else {
            linkedHashMap = r.f30543G;
        }
        knownLoggers = linkedHashMap;
    }

    private AndroidLog() {
    }

    private final void enableLogging(String str, String str2) {
        Level level;
        Logger logger = Logger.getLogger(str);
        if (configuredLoggers.add(logger)) {
            logger.setUseParentHandlers(false);
            if (Log.isLoggable(str2, 3)) {
                level = Level.FINE;
            } else {
                level = Log.isLoggable(str2, 4) ? Level.INFO : Level.WARNING;
            }
            logger.setLevel(level);
            logger.addHandler(AndroidLogHandler.INSTANCE);
        }
    }

    private final String loggerTag(String str) {
        String str2 = knownLoggers.get(str);
        return str2 == null ? l.Y0(23, str) : str2;
    }

    public final void androidLog$okhttp(String str, int i8, String str2, Throwable th) {
        int iMin;
        q0.h(str, "loggerName");
        q0.h(str2, "message");
        String strLoggerTag = loggerTag(str);
        if (Log.isLoggable(strLoggerTag, i8)) {
            if (th != null) {
                str2 = str2 + '\n' + Log.getStackTraceString(th);
            }
            int length = str2.length();
            int i9 = 0;
            while (i9 < length) {
                int iI0 = I6.k.I0(str2, '\n', i9, false, 4);
                if (iI0 == -1) {
                    iI0 = length;
                }
                while (true) {
                    iMin = Math.min(iI0, i9 + MAX_LOG_LENGTH);
                    String strSubstring = str2.substring(i9, iMin);
                    q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Log.println(i8, strLoggerTag, strSubstring);
                    if (iMin >= iI0) {
                        break;
                    } else {
                        i9 = iMin;
                    }
                }
                i9 = iMin + 1;
            }
        }
    }

    public final void enable() {
        for (Map.Entry<String, String> entry : knownLoggers.entrySet()) {
            enableLogging(entry.getKey(), entry.getValue());
        }
    }
}
