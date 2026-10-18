package k7;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f26029G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f26030H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public double f26031I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public double f26032J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f26033K;

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            ProcessBuilder processBuilder = new ProcessBuilder("ping", "-c " + this.f26030H, this.f26029G);
            processBuilder.redirectErrorStream(true);
            Process processStart = processBuilder.start();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.contains("icmp_seq")) {
                    this.f26031I = Double.parseDouble(line.split(" ")[line.split(" ").length - 2].replace("time=", HttpUrl.FRAGMENT_ENCODE_SET));
                }
                if (line.startsWith("rtt ")) {
                    this.f26032J = Double.parseDouble(line.split(MqttTopic.TOPIC_LEVEL_SEPARATOR)[4]);
                    break;
                }
            }
            processStart.waitFor();
            bufferedReader.close();
        } catch (Exception e8) {
            e8.printStackTrace();
        }
        this.f26033K = true;
    }
}
