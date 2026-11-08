package E0;

import android.net.Uri;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p094m0.P;
import p141s0.C3186k;

/* JADX INFO: loaded from: classes.dex */
public final class h implements S0.o {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final Pattern f2490G = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

    @Override // S0.o
    public final Object B(Uri uri, C3186k c3186k) throws IOException {
        String line = new BufferedReader(new InputStreamReader(c3186k, StandardCharsets.UTF_8)).readLine();
        try {
            Matcher matcher = f2490G.matcher(line);
            if (!matcher.matches()) {
                throw P.b("Couldn't parse timestamp: " + line, null);
            }
            String strGroup = matcher.group(1);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            long time = simpleDateFormat.parse(strGroup).getTime();
            if (!"Z".equals(matcher.group(2))) {
                long j8 = MqttTopic.SINGLE_LEVEL_WILDCARD.equals(matcher.group(4)) ? 1L : -1L;
                long j9 = Long.parseLong(matcher.group(5));
                String strGroup2 = matcher.group(7);
                time -= (((j9 * 60) + (TextUtils.isEmpty(strGroup2) ? 0L : Long.parseLong(strGroup2))) * 60000) * j8;
            }
            return Long.valueOf(time);
        } catch (ParseException e8) {
            throw P.b(null, e8);
        }
    }
}
