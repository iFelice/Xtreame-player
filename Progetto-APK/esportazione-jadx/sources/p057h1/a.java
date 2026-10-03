package p057h1;

import com.bumptech.glide.d;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p094m0.N;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f25383g = Pattern.compile("(.+?)='(.*?)';", 32);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CharsetDecoder f25384e = StandardCharsets.UTF_8.newDecoder();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CharsetDecoder f25385f = StandardCharsets.ISO_8859_1.newDecoder();

    @Override // com.bumptech.glide.d
    public final N h(p033e1.a aVar, ByteBuffer byteBuffer) {
        String string;
        CharsetDecoder charsetDecoder = this.f25385f;
        CharsetDecoder charsetDecoder2 = this.f25384e;
        String str = null;
        try {
            string = charsetDecoder2.decode(byteBuffer).toString();
            charsetDecoder2.reset();
            byteBuffer.rewind();
        } catch (CharacterCodingException unused) {
            charsetDecoder2.reset();
            byteBuffer.rewind();
            try {
                String string2 = charsetDecoder.decode(byteBuffer).toString();
                charsetDecoder.reset();
                byteBuffer.rewind();
                string = string2;
            } catch (CharacterCodingException unused2) {
                charsetDecoder.reset();
                byteBuffer.rewind();
                string = null;
            } catch (Throwable th) {
                charsetDecoder.reset();
                byteBuffer.rewind();
                throw th;
            }
        } catch (Throwable th2) {
            charsetDecoder2.reset();
            byteBuffer.rewind();
            throw th2;
        }
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        if (string == null) {
            return new N(new c(bArr, null, null));
        }
        Matcher matcher = f25383g.matcher(string);
        String str2 = null;
        for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            if (strGroup != null) {
                String strH0 = k.h0(strGroup);
                strH0.getClass();
                if (strH0.equals("streamurl")) {
                    str2 = strGroup2;
                } else if (strH0.equals("streamtitle")) {
                    str = strGroup2;
                }
            }
        }
        return new N(new c(bArr, str, str2));
    }
}
