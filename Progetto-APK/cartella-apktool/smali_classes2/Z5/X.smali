.class public final LZ5/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY5/w;


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:LU4/b;

.field public static final c:LU1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, LZ5/X;

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
    sput-object v0, LZ5/X;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, LU4/b;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, LZ5/X;->b:LU4/b;

    .line 19
    .line 20
    new-instance v0, LU1/f;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, v1}, LU1/f;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, LZ5/X;->c:LU1/f;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const-string v0, "GRPC_PROXY_EXP"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, LZ5/X;->c:LU1/f;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v1, LZ5/X;->b:LU4/b;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v1, ":"

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    array-length v1, v0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-le v1, v2, :cond_0

    .line 32
    .line 33
    aget-object v1, v0, v2

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/16 v1, 0x50

    .line 41
    .line 42
    :goto_0
    sget-object v2, LZ5/X;->a:Ljava/util/logging/Logger;

    .line 43
    .line 44
    const-string v3, "Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM."

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    aget-object v0, v0, v3

    .line 53
    .line 54
    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
