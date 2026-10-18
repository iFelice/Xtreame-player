.class public final Ll3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ll3/p;


# instance fields
.field public final a:Lp3/d;

.field public final b:Ll3/n;

.field public final c:Ljava/lang/String;

.field public final d:Lp3/a;

.field public final e:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll3/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ll3/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll3/p;->f:Ll3/p;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    new-instance v0, Lp3/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, -0x40800000    # -1.0f

    .line 7
    .line 8
    iput v1, v0, Lp3/d;->a:F

    .line 9
    .line 10
    new-instance v1, Ll3/n;

    .line 11
    .line 12
    new-instance v2, Ll3/a1;

    .line 13
    .line 14
    const-string v3, "com.google.android.gms.ads.AdManagerCreatorImpl"

    .line 15
    .line 16
    invoke-direct {v2, v3}, LR3/d;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ll3/M0;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v3, v4}, Ll3/M0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Ll3/M0;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-direct {v5, v6}, Ll3/M0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v7, Ll3/M0;

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    invoke-direct {v7, v8}, Ll3/M0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v8, Ll3/M0;

    .line 38
    .line 39
    const/4 v9, 0x5

    .line 40
    invoke-direct {v8, v9}, Ll3/M0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Ll3/M0;

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v9, v10}, Ll3/M0;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v10, Ll3/M0;

    .line 50
    .line 51
    const/4 v11, 0x2

    .line 52
    invoke-direct {v10, v11}, Ll3/M0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v2, v1, Ll3/n;->a:Ljava/lang/Object;

    .line 59
    .line 60
    iput-object v3, v1, Ll3/n;->b:Ljava/lang/Object;

    .line 61
    .line 62
    iput-object v5, v1, Ll3/n;->c:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v7, v1, Ll3/n;->d:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object v8, v1, Ll3/n;->e:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v9, v1, Ll3/n;->f:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object v10, v1, Ll3/n;->h:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 89
    .line 90
    .line 91
    move-result-wide v7

    .line 92
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-instance v5, Ljava/math/BigInteger;

    .line 101
    .line 102
    invoke-direct {v5, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const/4 v7, 0x0

    .line 110
    :goto_0
    if-ge v7, v11, :cond_0

    .line 111
    .line 112
    :try_start_0
    const-string v8, "MD5"

    .line 113
    .line 114
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v8, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 122
    .line 123
    .line 124
    const/16 v9, 0x8

    .line 125
    .line 126
    new-array v10, v9, [B

    .line 127
    .line 128
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-static {v8, v6, v10, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    new-instance v8, Ljava/math/BigInteger;

    .line 136
    .line 137
    invoke-direct {v8, v4, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_0
    new-instance v2, Lp3/a;

    .line 148
    .line 149
    const v3, 0xe7f3e20

    .line 150
    .line 151
    .line 152
    invoke-direct {v2, v4, v6, v3}, Lp3/a;-><init>(ZII)V

    .line 153
    .line 154
    .line 155
    new-instance v3, Ljava/util/Random;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Ll3/p;->a:Lp3/d;

    .line 164
    .line 165
    iput-object v1, p0, Ll3/p;->b:Ll3/n;

    .line 166
    .line 167
    iput-object v5, p0, Ll3/p;->c:Ljava/lang/String;

    .line 168
    .line 169
    iput-object v2, p0, Ll3/p;->d:Lp3/a;

    .line 170
    .line 171
    iput-object v3, p0, Ll3/p;->e:Ljava/util/Random;

    .line 172
    .line 173
    return-void
.end method
