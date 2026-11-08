.class public final Lcom/google/android/gms/internal/cast/J2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/cast/J2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/y2;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/J2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/J2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/J2;->c:Lcom/google/android/gms/internal/cast/J2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/J2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/cast/y2;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/y2;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/J2;->a:Lcom/google/android/gms/internal/cast/y2;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/M2;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/o2;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_b

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/J2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/cast/M2;

    .line 12
    .line 13
    if-nez v1, :cond_a

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/J2;->a:Lcom/google/android/gms/internal/cast/y2;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/cast/N2;->a:Ljava/lang/Class;

    .line 21
    .line 22
    const-class v2, Lcom/google/android/gms/internal/cast/i2;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    sget-object v3, Lcom/google/android/gms/internal/cast/N2;->a:Ljava/lang/Class;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/y2;->a:Lcom/google/android/gms/internal/cast/x2;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/x2;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/B2;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move-object v3, v1

    .line 56
    check-cast v3, Lcom/google/android/gms/internal/cast/L2;

    .line 57
    .line 58
    iget v4, v3, Lcom/google/android/gms/internal/cast/L2;->d:I

    .line 59
    .line 60
    const/4 v5, 0x2

    .line 61
    and-int/2addr v4, v5

    .line 62
    const-string v6, "Protobuf runtime is not correctly loaded."

    .line 63
    .line 64
    if-ne v4, v5, :cond_4

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget-object v2, v3, Lcom/google/android/gms/internal/cast/L2;->a:Lcom/google/android/gms/internal/cast/U1;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    sget-object v1, Lcom/google/android/gms/internal/cast/N2;->c:Lcom/google/android/gms/internal/cast/Q2;

    .line 75
    .line 76
    sget-object v3, Lcom/google/android/gms/internal/cast/e2;->a:Lcom/google/android/gms/internal/cast/d2;

    .line 77
    .line 78
    new-instance v4, Lcom/google/android/gms/internal/cast/F2;

    .line 79
    .line 80
    invoke-direct {v4, v1, v3, v2}, Lcom/google/android/gms/internal/cast/F2;-><init>(Lcom/google/android/gms/internal/cast/Q2;Lcom/google/android/gms/internal/cast/d2;Lcom/google/android/gms/internal/cast/U1;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    move-object v1, v4

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/cast/N2;->b:Lcom/google/android/gms/internal/cast/Q2;

    .line 86
    .line 87
    sget-object v3, Lcom/google/android/gms/internal/cast/e2;->b:Lcom/google/android/gms/internal/cast/d2;

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    new-instance v4, Lcom/google/android/gms/internal/cast/F2;

    .line 92
    .line 93
    invoke-direct {v4, v1, v3, v2}, Lcom/google/android/gms/internal/cast/F2;-><init>(Lcom/google/android/gms/internal/cast/Q2;Lcom/google/android/gms/internal/cast/d2;Lcom/google/android/gms/internal/cast/U1;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const/4 v4, 0x0

    .line 108
    const/4 v5, 0x1

    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/L2;->b()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    add-int/lit8 v2, v2, -0x1

    .line 116
    .line 117
    if-eq v2, v5, :cond_5

    .line 118
    .line 119
    sget v2, Lcom/google/android/gms/internal/cast/H2;->a:I

    .line 120
    .line 121
    sget-object v2, Lcom/google/android/gms/internal/cast/u2;->b:Lcom/google/android/gms/internal/cast/t2;

    .line 122
    .line 123
    sget-object v3, Lcom/google/android/gms/internal/cast/N2;->c:Lcom/google/android/gms/internal/cast/Q2;

    .line 124
    .line 125
    sget-object v4, Lcom/google/android/gms/internal/cast/e2;->a:Lcom/google/android/gms/internal/cast/d2;

    .line 126
    .line 127
    sget v5, Lcom/google/android/gms/internal/cast/A2;->a:I

    .line 128
    .line 129
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/cast/E2;->g(Lcom/google/android/gms/internal/cast/B2;Lcom/google/android/gms/internal/cast/u2;Lcom/google/android/gms/internal/cast/Q2;Lcom/google/android/gms/internal/cast/d2;)Lcom/google/android/gms/internal/cast/E2;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    sget v2, Lcom/google/android/gms/internal/cast/H2;->a:I

    .line 135
    .line 136
    sget-object v2, Lcom/google/android/gms/internal/cast/u2;->b:Lcom/google/android/gms/internal/cast/t2;

    .line 137
    .line 138
    sget-object v3, Lcom/google/android/gms/internal/cast/N2;->c:Lcom/google/android/gms/internal/cast/Q2;

    .line 139
    .line 140
    sget v5, Lcom/google/android/gms/internal/cast/A2;->a:I

    .line 141
    .line 142
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/cast/E2;->g(Lcom/google/android/gms/internal/cast/B2;Lcom/google/android/gms/internal/cast/u2;Lcom/google/android/gms/internal/cast/Q2;Lcom/google/android/gms/internal/cast/d2;)Lcom/google/android/gms/internal/cast/E2;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_2

    .line 147
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/L2;->b()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    add-int/lit8 v2, v2, -0x1

    .line 152
    .line 153
    if-eq v2, v5, :cond_8

    .line 154
    .line 155
    sget v2, Lcom/google/android/gms/internal/cast/H2;->a:I

    .line 156
    .line 157
    sget-object v2, Lcom/google/android/gms/internal/cast/u2;->a:Lcom/google/android/gms/internal/cast/s2;

    .line 158
    .line 159
    sget-object v3, Lcom/google/android/gms/internal/cast/N2;->b:Lcom/google/android/gms/internal/cast/Q2;

    .line 160
    .line 161
    sget-object v4, Lcom/google/android/gms/internal/cast/e2;->b:Lcom/google/android/gms/internal/cast/d2;

    .line 162
    .line 163
    if-eqz v4, :cond_7

    .line 164
    .line 165
    sget v5, Lcom/google/android/gms/internal/cast/A2;->a:I

    .line 166
    .line 167
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/cast/E2;->g(Lcom/google/android/gms/internal/cast/B2;Lcom/google/android/gms/internal/cast/u2;Lcom/google/android/gms/internal/cast/Q2;Lcom/google/android/gms/internal/cast/d2;)Lcom/google/android/gms/internal/cast/E2;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    goto :goto_2

    .line 172
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_8
    sget v2, Lcom/google/android/gms/internal/cast/H2;->a:I

    .line 179
    .line 180
    sget-object v2, Lcom/google/android/gms/internal/cast/u2;->a:Lcom/google/android/gms/internal/cast/s2;

    .line 181
    .line 182
    sget-object v3, Lcom/google/android/gms/internal/cast/N2;->b:Lcom/google/android/gms/internal/cast/Q2;

    .line 183
    .line 184
    sget v5, Lcom/google/android/gms/internal/cast/A2;->a:I

    .line 185
    .line 186
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/cast/E2;->g(Lcom/google/android/gms/internal/cast/B2;Lcom/google/android/gms/internal/cast/u2;Lcom/google/android/gms/internal/cast/Q2;Lcom/google/android/gms/internal/cast/d2;)Lcom/google/android/gms/internal/cast/E2;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :goto_2
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lcom/google/android/gms/internal/cast/M2;

    .line 195
    .line 196
    if-nez p1, :cond_9

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_9
    return-object p1

    .line 200
    :cond_a
    :goto_3
    return-object v1

    .line 201
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 202
    .line 203
    const-string v0, "messageType"

    .line 204
    .line 205
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1
.end method
