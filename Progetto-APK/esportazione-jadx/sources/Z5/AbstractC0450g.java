package Z5;

import Y5.AbstractC0417d;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: renamed from: Z5.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0450g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f8455a = Logger.getLogger(AbstractC0417d.class.getName());

    public static void a(AbstractC0417d abstractC0417d, Level level, String str) {
        Logger logger = f8455a;
        if (logger.isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, "[" + abstractC0417d + "] " + str);
            logRecord.setLoggerName(logger.getName());
            logRecord.setSourceClassName(logger.getName());
            logRecord.setSourceMethodName("log");
            logger.log(logRecord);
        }
    }
}
