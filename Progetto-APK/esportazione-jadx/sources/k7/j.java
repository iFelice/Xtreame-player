package k7;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final HashMap f26053G = new HashMap();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HashMap f26054H = new HashMap();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public double f26055I = 0.0d;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public double f26056J = 0.0d;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f26057K = false;

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://www.speedtest.net/speedtest-config.php").openConnection();
            if (httpURLConnection.getResponseCode() == 200) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        if (line.contains("isp=")) {
                            this.f26055I = Double.parseDouble(line.split("lat=\"")[1].split(" ")[0].replace("\"", HttpUrl.FRAGMENT_ENCODE_SET));
                            this.f26056J = Double.parseDouble(line.split("lon=\"")[1].split(" ")[0].replace("\"", HttpUrl.FRAGMENT_ENCODE_SET));
                            break;
                        }
                    } else {
                        break;
                    }
                }
                bufferedReader.close();
            }
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL("https://www.speedtest.net/speedtest-servers-static.php").openConnection();
                if (httpURLConnection2.getResponseCode() == 200) {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream()));
                    int i8 = 0;
                    while (true) {
                        String line2 = bufferedReader2.readLine();
                        if (line2 == null) {
                            break;
                        }
                        if (line2.contains("<server url")) {
                            String str = line2.split("server url=\"")[1].split("\"")[0];
                            List listAsList = Arrays.asList(line2.split("lat=\"")[1].split("\"")[0], line2.split("lon=\"")[1].split("\"")[0], line2.split("name=\"")[1].split("\"")[0], line2.split("country=\"")[1].split("\"")[0], line2.split("cc=\"")[1].split("\"")[0], line2.split("sponsor=\"")[1].split("\"")[0], line2.split("host=\"")[1].split("\"")[0]);
                            this.f26053G.put(Integer.valueOf(i8), str);
                            this.f26054H.put(Integer.valueOf(i8), listAsList);
                            i8++;
                        }
                    }
                    bufferedReader2.close();
                }
            } catch (Exception e8) {
                e8.printStackTrace();
            }
            this.f26057K = true;
        } catch (Exception e9) {
            e9.printStackTrace();
        }
    }
}
