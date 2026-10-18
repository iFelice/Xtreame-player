.class public abstract LZ5/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, LZ5/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, LZ5/x;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-object v0, LY5/z;->H:LY5/z;

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    new-array v1, v1, [LY5/z;

    .line 17
    .line 18
    sget-object v2, LY5/z;->K:LY5/z;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    sget-object v2, LY5/z;->M:LY5/z;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    sget-object v2, LY5/z;->N:LY5/z;

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    aput-object v2, v1, v4

    .line 32
    .line 33
    sget-object v2, LY5/z;->Q:LY5/z;

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    aput-object v2, v1, v4

    .line 37
    .line 38
    sget-object v2, LY5/z;->R:LY5/z;

    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    aput-object v2, v1, v4

    .line 42
    .line 43
    sget-object v2, LY5/z;->S:LY5/z;

    .line 44
    .line 45
    const/4 v4, 0x5

    .line 46
    aput-object v2, v1, v4

    .line 47
    .line 48
    sget-object v2, LY5/z;->W:LY5/z;

    .line 49
    .line 50
    const/4 v4, 0x6

    .line 51
    aput-object v2, v1, v4

    .line 52
    .line 53
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    const-string v0, "US-ASCII"

    .line 61
    .line 62
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 63
    .line 64
    .line 65
    new-instance v0, LY5/A;

    .line 66
    .line 67
    invoke-direct {v0, v3}, LY5/A;-><init>(I)V

    .line 68
    .line 69
    .line 70
    new-instance v1, LY5/q;

    .line 71
    .line 72
    const-string v2, "grpc-timeout"

    .line 73
    .line 74
    invoke-direct {v1, v2, v0}, LY5/q;-><init>(Ljava/lang/String;LY5/A;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, LY5/u;->b:LY5/A;

    .line 78
    .line 79
    new-instance v1, LY5/q;

    .line 80
    .line 81
    const-string v2, "grpc-encoding"

    .line 82
    .line 83
    invoke-direct {v1, v2, v0}, LY5/q;-><init>(Ljava/lang/String;LY5/A;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, LU4/b;

    .line 87
    .line 88
    invoke-direct {v1}, LU4/b;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "grpc-accept-encoding"

    .line 92
    .line 93
    invoke-static {v2, v1}, LY5/m;->a(Ljava/lang/String;LU4/b;)LY5/s;

    .line 94
    .line 95
    .line 96
    new-instance v1, LY5/q;

    .line 97
    .line 98
    const-string v2, "content-encoding"

    .line 99
    .line 100
    invoke-direct {v1, v2, v0}, LY5/q;-><init>(Ljava/lang/String;LY5/A;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, LU4/b;

    .line 104
    .line 105
    invoke-direct {v1}, LU4/b;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "accept-encoding"

    .line 109
    .line 110
    invoke-static {v2, v1}, LY5/m;->a(Ljava/lang/String;LU4/b;)LY5/s;

    .line 111
    .line 112
    .line 113
    new-instance v1, LY5/q;

    .line 114
    .line 115
    const-string v2, "content-length"

    .line 116
    .line 117
    invoke-direct {v1, v2, v0}, LY5/q;-><init>(Ljava/lang/String;LY5/A;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, LY5/q;

    .line 121
    .line 122
    const-string v2, "content-type"

    .line 123
    .line 124
    invoke-direct {v1, v2, v0}, LY5/q;-><init>(Ljava/lang/String;LY5/A;)V

    .line 125
    .line 126
    .line 127
    new-instance v1, LY5/q;

    .line 128
    .line 129
    const-string v2, "te"

    .line 130
    .line 131
    invoke-direct {v1, v2, v0}, LY5/q;-><init>(Ljava/lang/String;LY5/A;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, LY5/q;

    .line 135
    .line 136
    const-string v2, "user-agent"

    .line 137
    .line 138
    invoke-direct {v1, v2, v0}, LY5/q;-><init>(Ljava/lang/String;LY5/A;)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Ly4/f;->I:Ly4/f;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 147
    .line 148
    const-wide/16 v1, 0x14

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 151
    .line 152
    .line 153
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 154
    .line 155
    const-wide/16 v4, 0x2

    .line 156
    .line 157
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 161
    .line 162
    .line 163
    new-instance v0, LZ5/X;

    .line 164
    .line 165
    invoke-direct {v0}, LZ5/X;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v0, LZ5/v;

    .line 169
    .line 170
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    .line 1
    const-string v0, "authority"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ly4/k;->s(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v1, v0

    .line 13
    move-object v3, p0

    .line 14
    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v2, "Invalid authority: "

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v1
.end method

.method public static b(Ljava/io/Closeable;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 10
    .line 11
    const-string v1, "exception caught in closeQuietly"

    .line 12
    .line 13
    sget-object v2, LZ5/x;->a:Ljava/util/logging/Logger;

    .line 14
    .line 15
    invoke-virtual {v2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;)LD4/c;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    aput-object v1, v2, v0

    .line 12
    .line 13
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 27
    .line 28
    .line 29
    new-instance v0, LD4/c;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v1, v0

    .line 33
    move-object v3, p0

    .line 34
    move-object v6, v7

    .line 35
    invoke-direct/range {v1 .. v7}, LD4/c;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
