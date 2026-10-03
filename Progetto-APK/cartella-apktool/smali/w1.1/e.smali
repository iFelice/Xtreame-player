.class public final Lw1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/m;


# static fields
.field public static final H:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;

.field public static final L:Ljava/util/regex/Pattern;

.field public static final M:Ljava/util/regex/Pattern;

.field public static final N:Ljava/util/regex/Pattern;

.field public static final O:Lw1/d;


# instance fields
.field public final G:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lw1/e;->H:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lw1/e;->I:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lw1/e;->J:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lw1/e;->K:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lw1/e;->L:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    const-string v0, "^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lw1/e;->M:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const-string v0, "^(\\d+) (\\d+)$"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lw1/e;->N:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    new-instance v0, Lw1/d;

    .line 58
    .line 59
    const/high16 v1, 0x41f00000    # 30.0f

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {v0, v1, v2, v2}, Lw1/d;-><init>(FII)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lw1/e;->O:Lw1/d;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lw1/e;->G:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method public static d(Lw1/g;)Lw1/g;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lw1/g;

    .line 4
    .line 5
    invoke-direct {p0}, Lw1/g;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "tt"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "head"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "body"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "div"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "p"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "span"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "br"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "style"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const-string v0, "styling"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    const-string v0, "layout"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const-string v0, "region"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const-string v0, "metadata"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    const-string v0, "image"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_1

    .line 104
    .line 105
    const-string v0, "data"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    const-string v0, "information"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    const/4 p0, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 125
    :goto_1
    return p0
.end method

.method public static f(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 2

    .line 1
    invoke-static {p0}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string v0, "start"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x4

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string v0, "right"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x3

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    const-string v0, "left"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_3
    const-string v0, "end"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :sswitch_4
    const-string v0, "center"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v1, 0x0

    .line 71
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0

    .line 76
    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 83
    .line 84
    return-object p0

    .line 85
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 8

    .line 1
    const-string v0, "Invalid cell resolution "

    .line 2
    .line 3
    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    .line 4
    .line 5
    const-string v2, "cellResolution"

    .line 6
    .line 7
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/16 v1, 0xf

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    sget-object v2, Lw1/e;->N:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const-string v4, "Ignoring malformed cell resolution: "

    .line 27
    .line 28
    const-string v5, "TtmlParser"

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v5, p0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    const/4 v3, 0x1

    .line 41
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/4 v7, 0x2

    .line 53
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v3, 0x0

    .line 70
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, " "

    .line 79
    .line 80
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :catch_0
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v5, p0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return v1
.end method

.method public static i(Ljava/lang/String;Lw1/g;)V
    .locals 7

    .line 1
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "\\s+"

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    sget-object v4, Lw1/e;->J:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    array-length v1, v0

    .line 23
    if-ne v1, v3, :cond_5

    .line 24
    .line 25
    aget-object v0, v0, v2

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "TtmlParser"

    .line 32
    .line 33
    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 34
    .line 35
    invoke-static {v1, v4}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v4, "\'."

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    const/4 p0, 0x3

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    const/4 v5, -0x1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    sparse-switch v6, :sswitch_data_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_0
    const-string v6, "px"

    .line 67
    .line 68
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v5, 0x2

    .line 76
    goto :goto_1

    .line 77
    :sswitch_1
    const-string v6, "em"

    .line 78
    .line 79
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v5, 0x1

    .line 87
    goto :goto_1

    .line 88
    :sswitch_2
    const-string v6, "%"

    .line 89
    .line 90
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const/4 v5, 0x0

    .line 98
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 99
    .line 100
    .line 101
    new-instance p0, Lq1/f;

    .line 102
    .line 103
    const-string p1, "Invalid unit for fontSize: \'"

    .line 104
    .line 105
    invoke-static {p1, v1, v4}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :pswitch_0
    iput v2, p1, Lw1/g;->j:I

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :pswitch_1
    iput v3, p1, Lw1/g;->j:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :pswitch_2
    iput p0, p1, Lw1/g;->j:I

    .line 120
    .line 121
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    iput p0, p1, Lw1/g;->k:F

    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    new-instance p1, Lq1/f;

    .line 136
    .line 137
    const-string v0, "Invalid expression for fontSize: \'"

    .line 138
    .line 139
    invoke-static {v0, p0, v4}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_5
    new-instance p0, Lq1/f;

    .line 148
    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v1, "Invalid number of entries for fontSize: "

    .line 152
    .line 153
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    array-length v0, v0

    .line 157
    const-string v1, "."

    .line 158
    .line 159
    invoke-static {p1, v0, v1}, La/r;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lorg/xmlpull/v1/XmlPullParser;)Lw1/d;
    .locals 7

    .line 1
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    .line 2
    .line 3
    const-string v1, "frameRate"

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v1, 0x1e

    .line 17
    .line 18
    :goto_0
    const-string v2, "frameRateMultiplier"

    .line 19
    .line 20
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    const-string v4, " "

    .line 30
    .line 31
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    array-length v3, v2

    .line 36
    const/4 v4, 0x2

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    if-ne v3, v4, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v3, 0x0

    .line 44
    :goto_1
    const-string v4, "frameRateMultiplier doesn\'t have 2 parts"

    .line 45
    .line 46
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    aget-object v3, v2, v5

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    int-to-float v3, v3

    .line 56
    aget-object v2, v2, v6

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    int-to-float v2, v2

    .line 63
    div-float/2addr v3, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 66
    .line 67
    :goto_2
    sget-object v2, Lw1/e;->O:Lw1/d;

    .line 68
    .line 69
    iget v4, v2, Lw1/d;->b:I

    .line 70
    .line 71
    const-string v5, "subFrameRate"

    .line 72
    .line 73
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    :cond_3
    const-string v5, "tickRate"

    .line 84
    .line 85
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-eqz p0, :cond_4

    .line 90
    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    iget p0, v2, Lw1/d;->c:I

    .line 97
    .line 98
    :goto_3
    new-instance v0, Lw1/d;

    .line 99
    .line 100
    int-to-float v1, v1

    .line 101
    mul-float v1, v1, v3

    .line 102
    .line 103
    invoke-direct {v0, v1, v4, p0}, Lw1/d;-><init>(FII)V

    .line 104
    .line 105
    .line 106
    return-object v0
.end method

.method public static k(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;ILN/r;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    const-string v3, "style"

    .line 11
    .line 12
    invoke-static {v0, v3}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, -0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v4, :cond_6

    .line 19
    .line 20
    invoke-static {v0, v3}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lw1/g;

    .line 25
    .line 26
    invoke-direct {v4}, Lw1/g;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v4}, Lw1/e;->m(Lorg/xmlpull/v1/XmlPullParser;Lw1/g;)Lw1/g;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    new-array v3, v6, [Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 49
    .line 50
    const-string v7, "\\s+"

    .line 51
    .line 52
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_0
    array-length v5, v3

    .line 57
    :goto_1
    if-ge v6, v5, :cond_2

    .line 58
    .line 59
    aget-object v7, v3, v6

    .line 60
    .line 61
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Lw1/g;

    .line 66
    .line 67
    invoke-virtual {v4, v7}, Lw1/g;->a(Lw1/g;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v3, v4, Lw1/g;->l:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_3
    move/from16 v6, p2

    .line 81
    .line 82
    :cond_4
    move-object/from16 v7, p4

    .line 83
    .line 84
    :cond_5
    :goto_2
    move-object/from16 v9, p5

    .line 85
    .line 86
    goto/16 :goto_f

    .line 87
    .line 88
    :cond_6
    const-string v4, "region"

    .line 89
    .line 90
    invoke-static {v0, v4}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const-string v5, "id"

    .line 95
    .line 96
    if-eqz v4, :cond_19

    .line 97
    .line 98
    invoke-static {v0, v5}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    if-nez v8, :cond_7

    .line 103
    .line 104
    :goto_3
    move/from16 v6, p2

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    goto/16 :goto_d

    .line 108
    .line 109
    :cond_7
    const-string v5, "origin"

    .line 110
    .line 111
    invoke-static {v0, v5}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-nez v5, :cond_8

    .line 116
    .line 117
    invoke-static {v0, v3}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-eqz v7, :cond_8

    .line 122
    .line 123
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Lw1/g;

    .line 128
    .line 129
    if-eqz v7, :cond_8

    .line 130
    .line 131
    iget-object v5, v7, Lw1/g;->t:Ljava/lang/String;

    .line 132
    .line 133
    :cond_8
    const/4 v7, 0x2

    .line 134
    const/4 v9, 0x1

    .line 135
    const-string v10, "Ignoring region with missing tts:extent: "

    .line 136
    .line 137
    sget-object v11, Lw1/e;->M:Ljava/util/regex/Pattern;

    .line 138
    .line 139
    sget-object v12, Lw1/e;->L:Ljava/util/regex/Pattern;

    .line 140
    .line 141
    const/high16 v13, 0x42c80000    # 100.0f

    .line 142
    .line 143
    const-string v14, "TtmlParser"

    .line 144
    .line 145
    if-eqz v5, :cond_c

    .line 146
    .line 147
    invoke-virtual {v12, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    invoke-virtual {v11, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    .line 156
    .line 157
    .line 158
    move-result v17

    .line 159
    const-string v6, "Ignoring region with malformed origin: "

    .line 160
    .line 161
    if-eqz v17, :cond_9

    .line 162
    .line 163
    :try_start_0
    invoke-virtual {v15, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    div-float/2addr v4, v13

    .line 175
    invoke-virtual {v15, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 183
    .line 184
    .line 185
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    div-float/2addr v6, v13

    .line 187
    goto :goto_4

    .line 188
    :catch_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-static {v14, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    if-eqz v15, :cond_b

    .line 201
    .line 202
    if-nez v2, :cond_a

    .line 203
    .line 204
    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v14, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_a
    :try_start_1
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v15

    .line 216
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v15

    .line 223
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    int-to-float v15, v15

    .line 235
    iget v7, v2, LN/r;->H:I

    .line 236
    .line 237
    int-to-float v7, v7

    .line 238
    div-float v7, v15, v7

    .line 239
    .line 240
    int-to-float v4, v4

    .line 241
    iget v6, v2, LN/r;->I:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    .line 243
    int-to-float v6, v6

    .line 244
    div-float v6, v4, v6

    .line 245
    .line 246
    move v4, v7

    .line 247
    goto :goto_4

    .line 248
    :catch_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-static {v14, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :cond_b
    const-string v3, "Ignoring region with unsupported origin: "

    .line 258
    .line 259
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-static {v14, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :cond_c
    const/4 v6, 0x0

    .line 269
    const/4 v4, 0x0

    .line 270
    :goto_4
    const-string v7, "extent"

    .line 271
    .line 272
    invoke-static {v0, v7}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    if-nez v7, :cond_d

    .line 277
    .line 278
    invoke-static {v0, v3}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    if-eqz v3, :cond_d

    .line 283
    .line 284
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    check-cast v3, Lw1/g;

    .line 289
    .line 290
    if-eqz v3, :cond_d

    .line 291
    .line 292
    iget-object v7, v3, Lw1/g;->u:Ljava/lang/String;

    .line 293
    .line 294
    :cond_d
    const/high16 v3, 0x3f800000    # 1.0f

    .line 295
    .line 296
    if-eqz v7, :cond_11

    .line 297
    .line 298
    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    invoke-virtual {v11, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    const-string v15, "Ignoring region with malformed extent: "

    .line 311
    .line 312
    if-eqz v11, :cond_e

    .line 313
    .line 314
    :try_start_2
    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    div-float/2addr v7, v13

    .line 326
    const/4 v10, 0x2

    .line 327
    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 335
    .line 336
    .line 337
    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 338
    div-float/2addr v5, v13

    .line 339
    const/4 v11, 0x2

    .line 340
    goto :goto_5

    .line 341
    :catch_2
    invoke-static {v15, v5, v14}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_3

    .line 345
    .line 346
    :cond_e
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 347
    .line 348
    .line 349
    move-result v11

    .line 350
    if-eqz v11, :cond_10

    .line 351
    .line 352
    if-nez v2, :cond_f

    .line 353
    .line 354
    invoke-static {v10, v5, v14}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_3

    .line 358
    .line 359
    :cond_f
    :try_start_3
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    const/4 v11, 0x2

    .line 371
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    int-to-float v10, v10

    .line 383
    iget v12, v2, LN/r;->H:I

    .line 384
    .line 385
    int-to-float v12, v12

    .line 386
    div-float/2addr v10, v12

    .line 387
    int-to-float v7, v7

    .line 388
    iget v5, v2, LN/r;->I:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 389
    .line 390
    int-to-float v5, v5

    .line 391
    div-float v5, v7, v5

    .line 392
    .line 393
    move v7, v10

    .line 394
    :goto_5
    move v14, v5

    .line 395
    move v13, v7

    .line 396
    goto :goto_6

    .line 397
    :catch_3
    invoke-static {v15, v5, v14}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :cond_10
    const-string v3, "Ignoring region with unsupported extent: "

    .line 403
    .line 404
    invoke-static {v3, v5, v14}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_3

    .line 408
    .line 409
    :cond_11
    const/4 v11, 0x2

    .line 410
    const/high16 v13, 0x3f800000    # 1.0f

    .line 411
    .line 412
    const/high16 v14, 0x3f800000    # 1.0f

    .line 413
    .line 414
    :goto_6
    const-string v5, "displayAlign"

    .line 415
    .line 416
    invoke-static {v0, v5}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    if-eqz v5, :cond_14

    .line 421
    .line 422
    invoke-static {v5}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    const-string v7, "center"

    .line 430
    .line 431
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v7

    .line 435
    if-nez v7, :cond_13

    .line 436
    .line 437
    const-string v7, "after"

    .line 438
    .line 439
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    if-nez v5, :cond_12

    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_12
    add-float/2addr v6, v14

    .line 447
    move v10, v6

    .line 448
    const/4 v12, 0x2

    .line 449
    :goto_7
    move/from16 v6, p2

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_13
    const/high16 v5, 0x40000000    # 2.0f

    .line 453
    .line 454
    div-float v5, v14, v5

    .line 455
    .line 456
    add-float/2addr v5, v6

    .line 457
    move/from16 v6, p2

    .line 458
    .line 459
    move v10, v5

    .line 460
    const/4 v12, 0x1

    .line 461
    goto :goto_9

    .line 462
    :cond_14
    :goto_8
    move v10, v6

    .line 463
    const/4 v12, 0x0

    .line 464
    goto :goto_7

    .line 465
    :goto_9
    int-to-float v5, v6

    .line 466
    div-float v16, v3, v5

    .line 467
    .line 468
    const-string v3, "writingMode"

    .line 469
    .line 470
    invoke-static {v0, v3}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    if-eqz v3, :cond_18

    .line 475
    .line 476
    invoke-static {v3}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 484
    .line 485
    .line 486
    const/4 v5, -0x1

    .line 487
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    sparse-switch v7, :sswitch_data_0

    .line 492
    .line 493
    .line 494
    goto :goto_a

    .line 495
    :sswitch_0
    const-string v7, "tbrl"

    .line 496
    .line 497
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    if-nez v3, :cond_15

    .line 502
    .line 503
    goto :goto_a

    .line 504
    :cond_15
    const/4 v5, 0x2

    .line 505
    goto :goto_a

    .line 506
    :sswitch_1
    const-string v7, "tblr"

    .line 507
    .line 508
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    if-nez v3, :cond_16

    .line 513
    .line 514
    goto :goto_a

    .line 515
    :cond_16
    const/4 v5, 0x1

    .line 516
    goto :goto_a

    .line 517
    :sswitch_2
    const-string v7, "tb"

    .line 518
    .line 519
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    if-nez v3, :cond_17

    .line 524
    .line 525
    goto :goto_a

    .line 526
    :cond_17
    const/4 v5, 0x0

    .line 527
    :goto_a
    packed-switch v5, :pswitch_data_0

    .line 528
    .line 529
    .line 530
    goto :goto_b

    .line 531
    :pswitch_0
    const/16 v17, 0x1

    .line 532
    .line 533
    goto :goto_c

    .line 534
    :pswitch_1
    const/16 v17, 0x2

    .line 535
    .line 536
    goto :goto_c

    .line 537
    :cond_18
    :goto_b
    const/high16 v3, -0x80000000

    .line 538
    .line 539
    const/high16 v17, -0x80000000

    .line 540
    .line 541
    :goto_c
    new-instance v3, Lw1/f;

    .line 542
    .line 543
    const/4 v11, 0x0

    .line 544
    const/4 v15, 0x1

    .line 545
    move-object v7, v3

    .line 546
    move v9, v4

    .line 547
    invoke-direct/range {v7 .. v17}, Lw1/f;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 548
    .line 549
    .line 550
    move-object v4, v3

    .line 551
    :goto_d
    if-eqz v4, :cond_4

    .line 552
    .line 553
    iget-object v3, v4, Lw1/f;->a:Ljava/lang/String;

    .line 554
    .line 555
    move-object/from16 v7, p4

    .line 556
    .line 557
    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    goto/16 :goto_2

    .line 561
    .line 562
    :cond_19
    move/from16 v6, p2

    .line 563
    .line 564
    move-object/from16 v7, p4

    .line 565
    .line 566
    const-string v3, "metadata"

    .line 567
    .line 568
    invoke-static {v0, v3}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    if-eqz v4, :cond_5

    .line 573
    .line 574
    :cond_1a
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 575
    .line 576
    .line 577
    const-string v4, "image"

    .line 578
    .line 579
    invoke-static {v0, v4}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-eqz v4, :cond_1b

    .line 584
    .line 585
    invoke-static {v0, v5}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    if-eqz v4, :cond_1b

    .line 590
    .line 591
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v8

    .line 595
    move-object/from16 v9, p5

    .line 596
    .line 597
    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    goto :goto_e

    .line 601
    :cond_1b
    move-object/from16 v9, p5

    .line 602
    .line 603
    :goto_e
    invoke-static {v0, v3}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    if-eqz v4, :cond_1a

    .line 608
    .line 609
    :goto_f
    const-string v3, "head"

    .line 610
    .line 611
    invoke-static {v0, v3}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 612
    .line 613
    .line 614
    move-result v3

    .line 615
    if-eqz v3, :cond_0

    .line 616
    .line 617
    return-void

    .line 618
    nop

    .line 619
    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Lorg/xmlpull/v1/XmlPullParser;Lw1/c;Ljava/util/HashMap;Lw1/d;)Lw1/c;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v3}, Lw1/e;->m(Lorg/xmlpull/v1/XmlPullParser;Lw1/g;)Lw1/g;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    const-string v6, ""

    .line 17
    .line 18
    move-object v9, v3

    .line 19
    move-object v12, v9

    .line 20
    move-object v10, v6

    .line 21
    const/4 v3, 0x0

    .line 22
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    :goto_0
    if-ge v3, v2, :cond_a

    .line 38
    .line 39
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/4 v8, 0x1

    .line 55
    sparse-switch v5, :sswitch_data_0

    .line 56
    .line 57
    .line 58
    :goto_1
    const/4 v5, -0x1

    .line 59
    goto :goto_2

    .line 60
    :sswitch_0
    const-string v5, "backgroundImage"

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const/4 v5, 0x5

    .line 70
    goto :goto_2

    .line 71
    :sswitch_1
    const-string v5, "style"

    .line 72
    .line 73
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 v5, 0x4

    .line 81
    goto :goto_2

    .line 82
    :sswitch_2
    const-string v5, "begin"

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 v5, 0x3

    .line 92
    goto :goto_2

    .line 93
    :sswitch_3
    const-string v5, "end"

    .line 94
    .line 95
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 v5, 0x2

    .line 103
    goto :goto_2

    .line 104
    :sswitch_4
    const-string v5, "dur"

    .line 105
    .line 106
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const/4 v5, 0x1

    .line 114
    goto :goto_2

    .line 115
    :sswitch_5
    const-string v5, "region"

    .line 116
    .line 117
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_5

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    const/4 v5, 0x0

    .line 125
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :pswitch_0
    const-string v5, "#"

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_6

    .line 136
    .line 137
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    :cond_6
    :goto_3
    move-object/from16 v6, p2

    .line 142
    .line 143
    const/4 v5, 0x0

    .line 144
    goto :goto_6

    .line 145
    :pswitch_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_7

    .line 154
    .line 155
    const/4 v5, 0x0

    .line 156
    new-array v4, v5, [Ljava/lang/String;

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_7
    const/4 v5, 0x0

    .line 160
    sget-object v6, Lp0/M;->a:Ljava/lang/String;

    .line 161
    .line 162
    const-string v6, "\\s+"

    .line 163
    .line 164
    const/4 v8, -0x1

    .line 165
    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    :goto_4
    array-length v6, v4

    .line 170
    if-lez v6, :cond_8

    .line 171
    .line 172
    move-object/from16 v6, p2

    .line 173
    .line 174
    move-object v9, v4

    .line 175
    goto :goto_6

    .line 176
    :pswitch_2
    const/4 v5, 0x0

    .line 177
    invoke-static {v4, v1}, Lw1/e;->n(Ljava/lang/String;Lw1/d;)J

    .line 178
    .line 179
    .line 180
    move-result-wide v13

    .line 181
    :cond_8
    :goto_5
    move-object/from16 v6, p2

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :pswitch_3
    const/4 v5, 0x0

    .line 185
    invoke-static {v4, v1}, Lw1/e;->n(Ljava/lang/String;Lw1/d;)J

    .line 186
    .line 187
    .line 188
    move-result-wide v15

    .line 189
    goto :goto_5

    .line 190
    :pswitch_4
    const/4 v5, 0x0

    .line 191
    invoke-static {v4, v1}, Lw1/e;->n(Ljava/lang/String;Lw1/d;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v17

    .line 195
    goto :goto_5

    .line 196
    :pswitch_5
    move-object/from16 v6, p2

    .line 197
    .line 198
    const/4 v5, 0x0

    .line 199
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-eqz v8, :cond_9

    .line 204
    .line 205
    move-object v10, v4

    .line 206
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_a
    if-eqz v11, :cond_c

    .line 211
    .line 212
    iget-wide v1, v11, Lw1/c;->d:J

    .line 213
    .line 214
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    cmp-long v5, v1, v3

    .line 220
    .line 221
    if-eqz v5, :cond_d

    .line 222
    .line 223
    cmp-long v5, v13, v3

    .line 224
    .line 225
    if-eqz v5, :cond_b

    .line 226
    .line 227
    add-long/2addr v13, v1

    .line 228
    :cond_b
    cmp-long v5, v15, v3

    .line 229
    .line 230
    if-eqz v5, :cond_d

    .line 231
    .line 232
    add-long/2addr v15, v1

    .line 233
    goto :goto_7

    .line 234
    :cond_c
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :cond_d
    :goto_7
    cmp-long v1, v15, v3

    .line 240
    .line 241
    if-nez v1, :cond_f

    .line 242
    .line 243
    cmp-long v1, v17, v3

    .line 244
    .line 245
    if-eqz v1, :cond_e

    .line 246
    .line 247
    add-long v17, v13, v17

    .line 248
    .line 249
    move-wide/from16 v5, v17

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_e
    if-eqz v11, :cond_f

    .line 253
    .line 254
    iget-wide v1, v11, Lw1/c;->e:J

    .line 255
    .line 256
    cmp-long v5, v1, v3

    .line 257
    .line 258
    if-eqz v5, :cond_f

    .line 259
    .line 260
    move-wide v5, v1

    .line 261
    goto :goto_8

    .line 262
    :cond_f
    move-wide v5, v15

    .line 263
    :goto_8
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    new-instance v15, Lw1/c;

    .line 268
    .line 269
    const/4 v2, 0x0

    .line 270
    move-object v0, v15

    .line 271
    move-wide v3, v13

    .line 272
    move-object v8, v9

    .line 273
    move-object v9, v10

    .line 274
    move-object v10, v12

    .line 275
    move-object/from16 v11, p1

    .line 276
    .line 277
    invoke-direct/range {v0 .. v11}, Lw1/c;-><init>(Ljava/lang/String;Ljava/lang/String;JJLw1/g;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw1/c;)V

    .line 278
    .line 279
    .line 280
    return-object v15

    .line 281
    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Lorg/xmlpull/v1/XmlPullParser;Lw1/g;)Lw1/g;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v4, v2, :cond_39

    .line 12
    .line 13
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const/4 v8, 0x4

    .line 29
    const/4 v9, 0x5

    .line 30
    const/4 v10, 0x2

    .line 31
    const/4 v11, 0x3

    .line 32
    const/4 v12, -0x1

    .line 33
    const/4 v13, 0x1

    .line 34
    sparse-switch v7, :sswitch_data_0

    .line 35
    .line 36
    .line 37
    :goto_1
    const/4 v9, -0x1

    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :sswitch_0
    const-string v7, "multiRowAlign"

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/16 v9, 0x10

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :sswitch_1
    const-string v7, "backgroundColor"

    .line 54
    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/16 v9, 0xf

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :sswitch_2
    const-string v7, "rubyPosition"

    .line 67
    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/16 v9, 0xe

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :sswitch_3
    const-string v7, "textEmphasis"

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/16 v9, 0xd

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :sswitch_4
    const-string v7, "fontSize"

    .line 93
    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/16 v9, 0xc

    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :sswitch_5
    const-string v7, "textCombine"

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_5

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    const/16 v9, 0xb

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :sswitch_6
    const-string v7, "shear"

    .line 119
    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-nez v6, :cond_6

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    const/16 v9, 0xa

    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :sswitch_7
    const-string v7, "color"

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-nez v6, :cond_7

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    const/16 v9, 0x9

    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :sswitch_8
    const-string v7, "ruby"

    .line 145
    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-nez v6, :cond_8

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_8
    const/16 v9, 0x8

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :sswitch_9
    const-string v7, "id"

    .line 157
    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-nez v6, :cond_9

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_9
    const/4 v9, 0x7

    .line 166
    goto :goto_2

    .line 167
    :sswitch_a
    const-string v7, "fontWeight"

    .line 168
    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-nez v6, :cond_a

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_a
    const/4 v9, 0x6

    .line 178
    goto :goto_2

    .line 179
    :sswitch_b
    const-string v7, "textDecoration"

    .line 180
    .line 181
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-nez v6, :cond_10

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :sswitch_c
    const-string v7, "origin"

    .line 190
    .line 191
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-nez v6, :cond_b

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_b
    const/4 v9, 0x4

    .line 200
    goto :goto_2

    .line 201
    :sswitch_d
    const-string v7, "textAlign"

    .line 202
    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-nez v6, :cond_c

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_c
    const/4 v9, 0x3

    .line 212
    goto :goto_2

    .line 213
    :sswitch_e
    const-string v7, "fontFamily"

    .line 214
    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-nez v6, :cond_d

    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :cond_d
    const/4 v9, 0x2

    .line 224
    goto :goto_2

    .line 225
    :sswitch_f
    const-string v7, "extent"

    .line 226
    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-nez v6, :cond_e

    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :cond_e
    const/4 v9, 0x1

    .line 236
    goto :goto_2

    .line 237
    :sswitch_10
    const-string v7, "fontStyle"

    .line 238
    .line 239
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-nez v6, :cond_f

    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_f
    const/4 v9, 0x0

    .line 248
    :cond_10
    :goto_2
    const-string v6, "none"

    .line 249
    .line 250
    const-string v7, "after"

    .line 251
    .line 252
    const-string v14, "before"

    .line 253
    .line 254
    const-string v15, "TtmlParser"

    .line 255
    .line 256
    packed-switch v9, :pswitch_data_0

    .line 257
    .line 258
    .line 259
    goto/16 :goto_11

    .line 260
    .line 261
    :pswitch_0
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v5}, Lw1/e;->f(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    iput-object v5, v0, Lw1/g;->p:Landroid/text/Layout$Alignment;

    .line 270
    .line 271
    goto/16 :goto_11

    .line 272
    .line 273
    :pswitch_1
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    :try_start_0
    invoke-static {v5, v3}, Lp0/h;->a(Ljava/lang/String;Z)I

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    iput v6, v0, Lw1/g;->d:I

    .line 282
    .line 283
    iput-boolean v13, v0, Lw1/g;->e:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .line 285
    goto/16 :goto_11

    .line 286
    .line 287
    :catch_0
    const-string v6, "Failed parsing background value: "

    .line 288
    .line 289
    invoke-static {v6, v5, v15}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_11

    .line 293
    .line 294
    :pswitch_2
    invoke-static {v5}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    if-nez v6, :cond_12

    .line 306
    .line 307
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-nez v5, :cond_11

    .line 312
    .line 313
    goto/16 :goto_11

    .line 314
    .line 315
    :cond_11
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iput v10, v0, Lw1/g;->n:I

    .line 320
    .line 321
    goto/16 :goto_11

    .line 322
    .line 323
    :cond_12
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iput v13, v0, Lw1/g;->n:I

    .line 328
    .line 329
    goto/16 :goto_11

    .line 330
    .line 331
    :pswitch_3
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    sget-object v8, Lw1/b;->d:Ljava/util/regex/Pattern;

    .line 336
    .line 337
    const/4 v8, 0x0

    .line 338
    if-nez v5, :cond_13

    .line 339
    .line 340
    goto/16 :goto_d

    .line 341
    .line 342
    :cond_13
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-static {v5}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    if-eqz v9, :cond_14

    .line 355
    .line 356
    goto/16 :goto_d

    .line 357
    .line 358
    :cond_14
    sget-object v8, Lw1/b;->d:Ljava/util/regex/Pattern;

    .line 359
    .line 360
    invoke-static {v5, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    array-length v8, v5

    .line 365
    if-eqz v8, :cond_16

    .line 366
    .line 367
    if-eq v8, v13, :cond_15

    .line 368
    .line 369
    array-length v8, v5

    .line 370
    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    check-cast v5, [Ljava/lang/Object;

    .line 375
    .line 376
    invoke-static {v8, v5}, Lz4/L;->q(I[Ljava/lang/Object;)Lz4/L;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    goto :goto_3

    .line 381
    :cond_15
    aget-object v5, v5, v3

    .line 382
    .line 383
    new-instance v8, Lz4/r0;

    .line 384
    .line 385
    invoke-direct {v8, v5}, Lz4/r0;-><init>(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    move-object v5, v8

    .line 389
    goto :goto_3

    .line 390
    :cond_16
    sget-object v5, Lz4/j0;->P:Lz4/j0;

    .line 391
    .line 392
    :goto_3
    sget-object v8, Lw1/b;->h:Lz4/L;

    .line 393
    .line 394
    invoke-static {v8, v5}, Lz4/q0;->A(Lz4/L;Lz4/L;)Lz4/n0;

    .line 395
    .line 396
    .line 397
    move-result-object v8

    .line 398
    const-string v9, "outside"

    .line 399
    .line 400
    invoke-static {v8, v9}, Ly4/k;->F(Ljava/util/AbstractCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    check-cast v8, Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 407
    .line 408
    .line 409
    move-result v15

    .line 410
    const v10, -0x5305c081

    .line 411
    .line 412
    .line 413
    if-eq v15, v10, :cond_19

    .line 414
    .line 415
    const v10, -0x41ecca5b

    .line 416
    .line 417
    .line 418
    if-eq v15, v10, :cond_18

    .line 419
    .line 420
    const v9, 0x58705dc

    .line 421
    .line 422
    .line 423
    if-eq v15, v9, :cond_17

    .line 424
    .line 425
    goto :goto_4

    .line 426
    :cond_17
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v7

    .line 430
    if-eqz v7, :cond_1a

    .line 431
    .line 432
    const/4 v7, 0x0

    .line 433
    goto :goto_5

    .line 434
    :cond_18
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v7

    .line 438
    if-eqz v7, :cond_1a

    .line 439
    .line 440
    const/4 v7, 0x1

    .line 441
    goto :goto_5

    .line 442
    :cond_19
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    if-eqz v7, :cond_1a

    .line 447
    .line 448
    const/4 v7, 0x2

    .line 449
    goto :goto_5

    .line 450
    :cond_1a
    :goto_4
    const/4 v7, -0x1

    .line 451
    :goto_5
    if-eqz v7, :cond_1c

    .line 452
    .line 453
    if-eq v7, v13, :cond_1b

    .line 454
    .line 455
    const/4 v7, 0x1

    .line 456
    goto :goto_6

    .line 457
    :cond_1b
    const/4 v7, -0x2

    .line 458
    goto :goto_6

    .line 459
    :cond_1c
    const/4 v7, 0x2

    .line 460
    :goto_6
    sget-object v8, Lw1/b;->e:Lz4/L;

    .line 461
    .line 462
    invoke-static {v8, v5}, Lz4/q0;->A(Lz4/L;Lz4/L;)Lz4/n0;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    invoke-virtual {v8}, Lz4/n0;->isEmpty()Z

    .line 467
    .line 468
    .line 469
    move-result v9

    .line 470
    if-nez v9, :cond_20

    .line 471
    .line 472
    invoke-virtual {v8}, Lz4/n0;->iterator()Ljava/util/Iterator;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    check-cast v5, Lz4/b;

    .line 477
    .line 478
    invoke-virtual {v5}, Lz4/b;->next()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    check-cast v5, Ljava/lang/String;

    .line 483
    .line 484
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 485
    .line 486
    .line 487
    move-result v8

    .line 488
    const v9, 0x2dddaf

    .line 489
    .line 490
    .line 491
    if-eq v8, v9, :cond_1e

    .line 492
    .line 493
    const v9, 0x33af38

    .line 494
    .line 495
    .line 496
    if-eq v8, v9, :cond_1d

    .line 497
    .line 498
    goto :goto_7

    .line 499
    :cond_1d
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    if-eqz v5, :cond_1f

    .line 504
    .line 505
    const/4 v12, 0x0

    .line 506
    goto :goto_7

    .line 507
    :cond_1e
    const-string v6, "auto"

    .line 508
    .line 509
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    :cond_1f
    :goto_7
    new-instance v5, Lw1/b;

    .line 514
    .line 515
    invoke-direct {v5, v12, v3, v7}, Lw1/b;-><init>(III)V

    .line 516
    .line 517
    .line 518
    :goto_8
    move-object v8, v5

    .line 519
    goto/16 :goto_d

    .line 520
    .line 521
    :cond_20
    sget-object v6, Lw1/b;->g:Lz4/L;

    .line 522
    .line 523
    invoke-static {v6, v5}, Lz4/q0;->A(Lz4/L;Lz4/L;)Lz4/n0;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    sget-object v8, Lw1/b;->f:Lz4/L;

    .line 528
    .line 529
    invoke-static {v8, v5}, Lz4/q0;->A(Lz4/L;Lz4/L;)Lz4/n0;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    invoke-virtual {v6}, Lz4/n0;->isEmpty()Z

    .line 534
    .line 535
    .line 536
    move-result v8

    .line 537
    if-eqz v8, :cond_21

    .line 538
    .line 539
    invoke-virtual {v5}, Lz4/n0;->isEmpty()Z

    .line 540
    .line 541
    .line 542
    move-result v8

    .line 543
    if-eqz v8, :cond_21

    .line 544
    .line 545
    new-instance v5, Lw1/b;

    .line 546
    .line 547
    invoke-direct {v5, v12, v3, v7}, Lw1/b;-><init>(III)V

    .line 548
    .line 549
    .line 550
    goto :goto_8

    .line 551
    :cond_21
    const-string v8, "filled"

    .line 552
    .line 553
    invoke-static {v6, v8}, Ly4/k;->F(Ljava/util/AbstractCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v6

    .line 557
    check-cast v6, Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 560
    .line 561
    .line 562
    move-result v9

    .line 563
    const v10, -0x4bf7529e

    .line 564
    .line 565
    .line 566
    if-eq v9, v10, :cond_23

    .line 567
    .line 568
    const v8, 0x34264a

    .line 569
    .line 570
    .line 571
    if-eq v9, v8, :cond_22

    .line 572
    .line 573
    goto :goto_9

    .line 574
    :cond_22
    const-string v8, "open"

    .line 575
    .line 576
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v6

    .line 580
    if-eqz v6, :cond_24

    .line 581
    .line 582
    const/4 v6, 0x2

    .line 583
    goto :goto_a

    .line 584
    :cond_23
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v6

    .line 588
    :cond_24
    :goto_9
    const/4 v6, 0x1

    .line 589
    :goto_a
    const-string v8, "circle"

    .line 590
    .line 591
    invoke-static {v5, v8}, Ly4/k;->F(Ljava/util/AbstractCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    check-cast v5, Ljava/lang/String;

    .line 596
    .line 597
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 598
    .line 599
    .line 600
    move-result v9

    .line 601
    const v10, -0x51134330

    .line 602
    .line 603
    .line 604
    if-eq v9, v10, :cond_27

    .line 605
    .line 606
    const v8, -0x35fdaa48    # -2135406.0f

    .line 607
    .line 608
    .line 609
    if-eq v9, v8, :cond_26

    .line 610
    .line 611
    const v8, 0x18549

    .line 612
    .line 613
    .line 614
    if-eq v9, v8, :cond_25

    .line 615
    .line 616
    goto :goto_b

    .line 617
    :cond_25
    const-string v8, "dot"

    .line 618
    .line 619
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v5

    .line 623
    if-eqz v5, :cond_28

    .line 624
    .line 625
    const/4 v12, 0x0

    .line 626
    goto :goto_b

    .line 627
    :cond_26
    const-string v8, "sesame"

    .line 628
    .line 629
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-eqz v5, :cond_28

    .line 634
    .line 635
    const/4 v12, 0x1

    .line 636
    goto :goto_b

    .line 637
    :cond_27
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    if-eqz v5, :cond_28

    .line 642
    .line 643
    const/4 v12, 0x2

    .line 644
    :cond_28
    :goto_b
    if-eqz v12, :cond_2a

    .line 645
    .line 646
    if-eq v12, v13, :cond_29

    .line 647
    .line 648
    const/4 v10, 0x1

    .line 649
    goto :goto_c

    .line 650
    :cond_29
    const/4 v10, 0x3

    .line 651
    goto :goto_c

    .line 652
    :cond_2a
    const/4 v10, 0x2

    .line 653
    :goto_c
    new-instance v5, Lw1/b;

    .line 654
    .line 655
    invoke-direct {v5, v10, v6, v7}, Lw1/b;-><init>(III)V

    .line 656
    .line 657
    .line 658
    goto/16 :goto_8

    .line 659
    .line 660
    :goto_d
    iput-object v8, v0, Lw1/g;->r:Lw1/b;

    .line 661
    .line 662
    goto/16 :goto_11

    .line 663
    .line 664
    :pswitch_4
    :try_start_1
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-static {v5, v0}, Lw1/e;->i(Ljava/lang/String;Lw1/g;)V
    :try_end_1
    .catch Lq1/f; {:try_start_1 .. :try_end_1} :catch_1

    .line 669
    .line 670
    .line 671
    goto/16 :goto_11

    .line 672
    .line 673
    :catch_1
    const-string v6, "Failed parsing fontSize value: "

    .line 674
    .line 675
    invoke-static {v6, v5, v15}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_11

    .line 679
    .line 680
    :pswitch_5
    invoke-static {v5}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v5

    .line 684
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    const-string v7, "all"

    .line 688
    .line 689
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v7

    .line 693
    if-nez v7, :cond_2c

    .line 694
    .line 695
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    if-nez v5, :cond_2b

    .line 700
    .line 701
    goto/16 :goto_11

    .line 702
    .line 703
    :cond_2b
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    iput v3, v0, Lw1/g;->q:I

    .line 708
    .line 709
    goto/16 :goto_11

    .line 710
    .line 711
    :cond_2c
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    iput v13, v0, Lw1/g;->q:I

    .line 716
    .line 717
    goto/16 :goto_11

    .line 718
    .line 719
    :pswitch_6
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 720
    .line 721
    .line 722
    move-result-object v6

    .line 723
    sget-object v0, Lw1/e;->K:Ljava/util/regex/Pattern;

    .line 724
    .line 725
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 730
    .line 731
    .line 732
    move-result v7

    .line 733
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 734
    .line 735
    .line 736
    if-nez v7, :cond_2d

    .line 737
    .line 738
    const-string v0, "Invalid value for shear: "

    .line 739
    .line 740
    invoke-static {v0, v5, v15}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    goto :goto_e

    .line 744
    :cond_2d
    :try_start_2
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    const/high16 v7, -0x3d380000    # -100.0f

    .line 756
    .line 757
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    const/high16 v7, 0x42c80000    # 100.0f

    .line 762
    .line 763
    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    .line 764
    .line 765
    .line 766
    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 767
    goto :goto_e

    .line 768
    :catch_2
    move-exception v0

    .line 769
    new-instance v7, Ljava/lang/StringBuilder;

    .line 770
    .line 771
    const-string v9, "Failed to parse shear: "

    .line 772
    .line 773
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    invoke-static {v15, v5, v0}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 784
    .line 785
    .line 786
    :goto_e
    iput v8, v6, Lw1/g;->s:F

    .line 787
    .line 788
    move-object v0, v6

    .line 789
    goto/16 :goto_11

    .line 790
    .line 791
    :pswitch_7
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    :try_start_3
    invoke-static {v5, v3}, Lp0/h;->a(Ljava/lang/String;Z)I

    .line 796
    .line 797
    .line 798
    move-result v6

    .line 799
    iput v6, v0, Lw1/g;->b:I

    .line 800
    .line 801
    iput-boolean v13, v0, Lw1/g;->c:Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 802
    .line 803
    goto/16 :goto_11

    .line 804
    .line 805
    :catch_3
    const-string v6, "Failed parsing color value: "

    .line 806
    .line 807
    invoke-static {v6, v5, v15}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    goto/16 :goto_11

    .line 811
    .line 812
    :pswitch_8
    invoke-static {v5}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v5

    .line 816
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 820
    .line 821
    .line 822
    const/4 v6, -0x1

    .line 823
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 824
    .line 825
    .line 826
    move-result v7

    .line 827
    sparse-switch v7, :sswitch_data_1

    .line 828
    .line 829
    .line 830
    goto :goto_f

    .line 831
    :sswitch_11
    const-string v7, "text"

    .line 832
    .line 833
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 834
    .line 835
    .line 836
    move-result v5

    .line 837
    if-nez v5, :cond_2e

    .line 838
    .line 839
    goto :goto_f

    .line 840
    :cond_2e
    const/4 v6, 0x5

    .line 841
    goto :goto_f

    .line 842
    :sswitch_12
    const-string v7, "base"

    .line 843
    .line 844
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result v5

    .line 848
    if-nez v5, :cond_2f

    .line 849
    .line 850
    goto :goto_f

    .line 851
    :cond_2f
    const/4 v6, 0x4

    .line 852
    goto :goto_f

    .line 853
    :sswitch_13
    const-string v7, "textContainer"

    .line 854
    .line 855
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v5

    .line 859
    if-nez v5, :cond_30

    .line 860
    .line 861
    goto :goto_f

    .line 862
    :cond_30
    const/4 v6, 0x3

    .line 863
    goto :goto_f

    .line 864
    :sswitch_14
    const-string v7, "delimiter"

    .line 865
    .line 866
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    move-result v5

    .line 870
    if-nez v5, :cond_31

    .line 871
    .line 872
    goto :goto_f

    .line 873
    :cond_31
    const/4 v6, 0x2

    .line 874
    goto :goto_f

    .line 875
    :sswitch_15
    const-string v7, "container"

    .line 876
    .line 877
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    move-result v5

    .line 881
    if-nez v5, :cond_32

    .line 882
    .line 883
    goto :goto_f

    .line 884
    :cond_32
    const/4 v6, 0x1

    .line 885
    goto :goto_f

    .line 886
    :sswitch_16
    const-string v7, "baseContainer"

    .line 887
    .line 888
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 889
    .line 890
    .line 891
    move-result v5

    .line 892
    if-nez v5, :cond_33

    .line 893
    .line 894
    goto :goto_f

    .line 895
    :cond_33
    const/4 v6, 0x0

    .line 896
    :goto_f
    packed-switch v6, :pswitch_data_1

    .line 897
    .line 898
    .line 899
    goto/16 :goto_11

    .line 900
    .line 901
    :pswitch_9
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    iput v11, v0, Lw1/g;->m:I

    .line 906
    .line 907
    goto/16 :goto_11

    .line 908
    .line 909
    :pswitch_a
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    iput v8, v0, Lw1/g;->m:I

    .line 914
    .line 915
    goto/16 :goto_11

    .line 916
    .line 917
    :pswitch_b
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    iput v13, v0, Lw1/g;->m:I

    .line 922
    .line 923
    goto/16 :goto_11

    .line 924
    .line 925
    :pswitch_c
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    const/4 v5, 0x2

    .line 930
    iput v5, v0, Lw1/g;->m:I

    .line 931
    .line 932
    goto/16 :goto_11

    .line 933
    .line 934
    :pswitch_d
    const-string v6, "style"

    .line 935
    .line 936
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v7

    .line 940
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    move-result v6

    .line 944
    if-eqz v6, :cond_38

    .line 945
    .line 946
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    iput-object v5, v0, Lw1/g;->l:Ljava/lang/String;

    .line 951
    .line 952
    goto/16 :goto_11

    .line 953
    .line 954
    :pswitch_e
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    const-string v6, "bold"

    .line 959
    .line 960
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 961
    .line 962
    .line 963
    move-result v5

    .line 964
    iput v5, v0, Lw1/g;->h:I

    .line 965
    .line 966
    goto/16 :goto_11

    .line 967
    .line 968
    :pswitch_f
    invoke-static {v5}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v5

    .line 972
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 973
    .line 974
    .line 975
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 976
    .line 977
    .line 978
    const/4 v6, -0x1

    .line 979
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 980
    .line 981
    .line 982
    move-result v7

    .line 983
    sparse-switch v7, :sswitch_data_2

    .line 984
    .line 985
    .line 986
    goto :goto_10

    .line 987
    :sswitch_17
    const-string v7, "linethrough"

    .line 988
    .line 989
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v5

    .line 993
    if-nez v5, :cond_34

    .line 994
    .line 995
    goto :goto_10

    .line 996
    :cond_34
    const/4 v6, 0x3

    .line 997
    goto :goto_10

    .line 998
    :sswitch_18
    const-string v7, "nolinethrough"

    .line 999
    .line 1000
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v5

    .line 1004
    if-nez v5, :cond_35

    .line 1005
    .line 1006
    goto :goto_10

    .line 1007
    :cond_35
    const/4 v6, 0x2

    .line 1008
    goto :goto_10

    .line 1009
    :sswitch_19
    const-string v7, "underline"

    .line 1010
    .line 1011
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v5

    .line 1015
    if-nez v5, :cond_36

    .line 1016
    .line 1017
    goto :goto_10

    .line 1018
    :cond_36
    const/4 v6, 0x1

    .line 1019
    goto :goto_10

    .line 1020
    :sswitch_1a
    const-string v7, "nounderline"

    .line 1021
    .line 1022
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v5

    .line 1026
    if-nez v5, :cond_37

    .line 1027
    .line 1028
    goto :goto_10

    .line 1029
    :cond_37
    const/4 v6, 0x0

    .line 1030
    :goto_10
    packed-switch v6, :pswitch_data_2

    .line 1031
    .line 1032
    .line 1033
    goto :goto_11

    .line 1034
    :pswitch_10
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    iput v13, v0, Lw1/g;->f:I

    .line 1039
    .line 1040
    goto :goto_11

    .line 1041
    :pswitch_11
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    iput v3, v0, Lw1/g;->f:I

    .line 1046
    .line 1047
    goto :goto_11

    .line 1048
    :pswitch_12
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    iput v13, v0, Lw1/g;->g:I

    .line 1053
    .line 1054
    goto :goto_11

    .line 1055
    :pswitch_13
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    iput v3, v0, Lw1/g;->g:I

    .line 1060
    .line 1061
    goto :goto_11

    .line 1062
    :pswitch_14
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v0

    .line 1066
    iput-object v5, v0, Lw1/g;->t:Ljava/lang/String;

    .line 1067
    .line 1068
    goto :goto_11

    .line 1069
    :pswitch_15
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    invoke-static {v5}, Lw1/e;->f(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v5

    .line 1077
    iput-object v5, v0, Lw1/g;->o:Landroid/text/Layout$Alignment;

    .line 1078
    .line 1079
    goto :goto_11

    .line 1080
    :pswitch_16
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    iput-object v5, v0, Lw1/g;->a:Ljava/lang/String;

    .line 1085
    .line 1086
    goto :goto_11

    .line 1087
    :pswitch_17
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    iput-object v5, v0, Lw1/g;->u:Ljava/lang/String;

    .line 1092
    .line 1093
    goto :goto_11

    .line 1094
    :pswitch_18
    invoke-static {v0}, Lw1/e;->d(Lw1/g;)Lw1/g;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    const-string v6, "italic"

    .line 1099
    .line 1100
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v5

    .line 1104
    iput v5, v0, Lw1/g;->i:I

    .line 1105
    .line 1106
    :cond_38
    :goto_11
    add-int/lit8 v4, v4, 0x1

    .line 1107
    .line 1108
    goto/16 :goto_0

    .line 1109
    .line 1110
    :cond_39
    return-object v0

    .line 1111
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_10
        -0x4cd540d6 -> :sswitch_f
        -0x48ff636d -> :sswitch_e
        -0x3f826a28 -> :sswitch_d
        -0x3c1e50da -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    :sswitch_data_1
    .sparse-switch
        -0x24de7f50 -> :sswitch_16
        -0x187eb37f -> :sswitch_15
        -0xeee99f9 -> :sswitch_14
        -0x81c562c -> :sswitch_13
        0x2e06d1 -> :sswitch_12
        0x36452d -> :sswitch_11
    .end sparse-switch

    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_9
    .end packed-switch

    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_1a
        -0x3d363934 -> :sswitch_19
        0x36723ff0 -> :sswitch_18
        0x641ec051 -> :sswitch_17
    .end sparse-switch

    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static n(Ljava/lang/String;Lw1/d;)J
    .locals 13

    .line 1
    sget-object v0, Lw1/e;->H:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v7

    .line 33
    const-wide/16 v9, 0xe10

    .line 34
    .line 35
    mul-long v7, v7, v9

    .line 36
    .line 37
    long-to-double v7, v7

    .line 38
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v9

    .line 49
    const-wide/16 v11, 0x3c

    .line 50
    .line 51
    mul-long v9, v9, v11

    .line 52
    .line 53
    long-to-double v9, v9

    .line 54
    add-double/2addr v7, v9

    .line 55
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    long-to-double v5, v5

    .line 67
    add-double/2addr v7, v5

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    if-eqz p0, :cond_0

    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move-wide v9, v4

    .line 82
    :goto_0
    add-double/2addr v7, v9

    .line 83
    const/4 p0, 0x5

    .line 84
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_1

    .line 89
    .line 90
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    long-to-float p0, v9

    .line 95
    iget v1, p1, Lw1/d;->a:F

    .line 96
    .line 97
    div-float/2addr p0, v1

    .line 98
    float-to-double v9, p0

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    move-wide v9, v4

    .line 101
    :goto_1
    add-double/2addr v7, v9

    .line 102
    const/4 p0, 0x6

    .line 103
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    if-eqz p0, :cond_2

    .line 108
    .line 109
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    long-to-double v0, v0

    .line 114
    iget p0, p1, Lw1/d;->b:I

    .line 115
    .line 116
    int-to-double v4, p0

    .line 117
    div-double/2addr v0, v4

    .line 118
    iget p0, p1, Lw1/d;->a:F

    .line 119
    .line 120
    float-to-double p0, p0

    .line 121
    div-double v4, v0, p0

    .line 122
    .line 123
    :cond_2
    add-double/2addr v7, v4

    .line 124
    mul-double v7, v7, v2

    .line 125
    .line 126
    double-to-long p0, v7

    .line 127
    return-wide p0

    .line 128
    :cond_3
    sget-object v0, Lw1/e;->I:Ljava/util/regex/Pattern;

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_9

    .line 139
    .line 140
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 148
    .line 149
    .line 150
    move-result-wide v4

    .line 151
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 159
    .line 160
    .line 161
    const/4 v0, -0x1

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    sparse-switch v1, :sswitch_data_0

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :sswitch_0
    const-string v1, "ms"

    .line 171
    .line 172
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-nez p0, :cond_4

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_4
    const/4 v0, 0x4

    .line 180
    goto :goto_2

    .line 181
    :sswitch_1
    const-string v1, "t"

    .line 182
    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-nez p0, :cond_5

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_5
    const/4 v0, 0x3

    .line 191
    goto :goto_2

    .line 192
    :sswitch_2
    const-string v1, "m"

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-nez p0, :cond_6

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_6
    const/4 v0, 0x2

    .line 202
    goto :goto_2

    .line 203
    :sswitch_3
    const-string v1, "h"

    .line 204
    .line 205
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    if-nez p0, :cond_7

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    const/4 v0, 0x1

    .line 213
    goto :goto_2

    .line 214
    :sswitch_4
    const-string v1, "f"

    .line 215
    .line 216
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-nez p0, :cond_8

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_8
    const/4 v0, 0x0

    .line 224
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :goto_3
    div-double/2addr v4, p0

    .line 234
    goto :goto_5

    .line 235
    :pswitch_1
    iget p0, p1, Lw1/d;->c:I

    .line 236
    .line 237
    int-to-double p0, p0

    .line 238
    goto :goto_3

    .line 239
    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    .line 240
    .line 241
    :goto_4
    mul-double v4, v4, p0

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :pswitch_4
    iget p0, p1, Lw1/d;->a:F

    .line 251
    .line 252
    float-to-double p0, p0

    .line 253
    goto :goto_3

    .line 254
    :goto_5
    mul-double v4, v4, v2

    .line 255
    .line 256
    double-to-long p0, v4

    .line 257
    return-wide p0

    .line 258
    :cond_9
    new-instance p1, Lq1/f;

    .line 259
    .line 260
    const-string v0, "Malformed time expression: "

    .line 261
    .line 262
    invoke-static {v0, p0}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    nop

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Lorg/xmlpull/v1/XmlPullParser;)LN/r;
    .locals 7

    .line 1
    const-string v0, "extent"

    .line 2
    .line 3
    invoke-static {p0, v0}, LZ3/C;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Lw1/e;->M:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "TtmlParser"

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v1, "Ignoring non-pixel tts extent: "

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v3, p0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v4, 0x2

    .line 48
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    new-instance v4, LN/r;

    .line 60
    .line 61
    const/4 v5, 0x3

    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-direct {v4, v2, v1, v5, v6}, LN/r;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-object v4

    .line 67
    :catch_0
    const-string v1, "Ignoring malformed tts extent: "

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v3, p0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b([BIILq1/l;Lp0/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1, p3}, Lw1/e;->c(I[BI)Lq1/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p4, p5}, Lcom/bumptech/glide/c;->v(Lq1/d;Lq1/l;Lp0/j;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(I[BI)Lq1/d;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v1, Lw1/e;->G:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    new-instance v9, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v10, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v11, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    new-instance v2, Lw1/f;

    .line 27
    .line 28
    const-string v13, ""

    .line 29
    .line 30
    const/high16 v17, -0x80000000

    .line 31
    .line 32
    const v18, -0x800001

    .line 33
    .line 34
    .line 35
    const v19, -0x800001

    .line 36
    .line 37
    .line 38
    const/high16 v20, -0x80000000

    .line 39
    .line 40
    const v21, -0x800001

    .line 41
    .line 42
    .line 43
    const/high16 v22, -0x80000000

    .line 44
    .line 45
    const v14, -0x800001

    .line 46
    .line 47
    .line 48
    const v15, -0x800001

    .line 49
    .line 50
    .line 51
    const/high16 v16, -0x80000000

    .line 52
    .line 53
    move-object v12, v2

    .line 54
    invoke-direct/range {v12 .. v22}, Lw1/f;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 61
    .line 62
    move/from16 v2, p1

    .line 63
    .line 64
    move-object/from16 v3, p2

    .line 65
    .line 66
    move/from16 v4, p3

    .line 67
    .line 68
    invoke-direct {v0, v3, v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v12, Ljava/util/ArrayDeque;

    .line 76
    .line 77
    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    sget-object v3, Lw1/e;->O:Lw1/d;

    .line 85
    .line 86
    const/16 v4, 0xf

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    move-object v13, v2

    .line 90
    const/4 v14, 0x0

    .line 91
    :goto_0
    const/4 v5, 0x1

    .line 92
    if-eq v0, v5, :cond_c

    .line 93
    .line 94
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lw1/c;

    .line 99
    .line 100
    const/4 v7, 0x2

    .line 101
    if-nez v14, :cond_9

    .line 102
    .line 103
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v15
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string v6, "tt"

    .line 108
    .line 109
    if-ne v0, v7, :cond_5

    .line 110
    .line 111
    :try_start_1
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    .line 117
    invoke-static {v8}, Lw1/e;->j(Lorg/xmlpull/v1/XmlPullParser;)Lw1/d;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v8}, Lw1/e;->h(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-static {v8}, Lw1/e;->o(Lorg/xmlpull/v1/XmlPullParser;)LN/r;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :cond_0
    move-object/from16 v16, v2

    .line 130
    .line 131
    move-object v7, v3

    .line 132
    move/from16 v17, v4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :catch_1
    move-exception v0

    .line 139
    goto/16 :goto_6

    .line 140
    .line 141
    :goto_1
    invoke-static {v15}, Lw1/e;->e(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    const-string v2, "TtmlParser"

    .line 146
    .line 147
    if-nez v0, :cond_1

    .line 148
    .line 149
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v3, "Ignoring unsupported tag: "

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v2, v0}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v14, v14, 0x1

    .line 174
    .line 175
    move-object v3, v7

    .line 176
    :goto_2
    move-object/from16 v2, v16

    .line 177
    .line 178
    move/from16 v4, v17

    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_1
    const-string v0, "head"

    .line 183
    .line 184
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_2

    .line 189
    .line 190
    move-object v2, v8

    .line 191
    move-object v3, v9

    .line 192
    move/from16 v4, v17

    .line 193
    .line 194
    move-object/from16 v5, v16

    .line 195
    .line 196
    move-object v6, v10

    .line 197
    move-object v15, v7

    .line 198
    move-object v7, v11

    .line 199
    invoke-static/range {v2 .. v7}, Lw1/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;ILN/r;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_2
    move-object v15, v7

    .line 204
    :try_start_3
    invoke-static {v8, v5, v10, v15}, Lw1/e;->l(Lorg/xmlpull/v1/XmlPullParser;Lw1/c;Ljava/util/HashMap;Lw1/d;)Lw1/c;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v12, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    if-eqz v5, :cond_4

    .line 212
    .line 213
    iget-object v3, v5, Lw1/c;->m:Ljava/util/ArrayList;

    .line 214
    .line 215
    if-nez v3, :cond_3

    .line 216
    .line 217
    new-instance v3, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    iput-object v3, v5, Lw1/c;->m:Ljava/util/ArrayList;

    .line 223
    .line 224
    :cond_3
    iget-object v3, v5, Lw1/c;->m:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lq1/f; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 227
    .line 228
    .line 229
    :cond_4
    :goto_3
    move-object v3, v15

    .line 230
    goto :goto_2

    .line 231
    :catch_2
    move-exception v0

    .line 232
    :try_start_4
    const-string v3, "Suppressing parser error"

    .line 233
    .line 234
    invoke-static {v2, v3, v0}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    add-int/lit8 v14, v14, 0x1

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_5
    const/4 v7, 0x4

    .line 241
    if-ne v0, v7, :cond_7

    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v0}, Lw1/c;->a(Ljava/lang/String;)Lw1/c;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v6, v5, Lw1/c;->m:Ljava/util/ArrayList;

    .line 255
    .line 256
    if-nez v6, :cond_6

    .line 257
    .line 258
    new-instance v6, Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v6, v5, Lw1/c;->m:Ljava/util/ArrayList;

    .line 264
    .line 265
    :cond_6
    iget-object v5, v5, Lw1/c;->m:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_7
    const/4 v5, 0x3

    .line 272
    if-ne v0, v5, :cond_b

    .line 273
    .line 274
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_8

    .line 283
    .line 284
    new-instance v13, Lw1/h;

    .line 285
    .line 286
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Lw1/c;

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-direct {v13, v0, v9, v10, v11}, Lw1/h;-><init>(Lw1/c;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 296
    .line 297
    .line 298
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_9
    if-ne v0, v7, :cond_a

    .line 303
    .line 304
    add-int/lit8 v14, v14, 0x1

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_a
    const/4 v5, 0x3

    .line 308
    if-ne v0, v5, :cond_b

    .line 309
    .line 310
    add-int/lit8 v14, v14, -0x1

    .line 311
    .line 312
    :cond_b
    :goto_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 313
    .line 314
    .line 315
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :cond_c
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 322
    .line 323
    .line 324
    return-object v13

    .line 325
    :goto_5
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 326
    .line 327
    const-string v3, "Unexpected error when reading input."

    .line 328
    .line 329
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    throw v2

    .line 333
    :goto_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 334
    .line 335
    const-string v3, "Unable to decode source"

    .line 336
    .line 337
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    throw v2
.end method

.method public final g()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
