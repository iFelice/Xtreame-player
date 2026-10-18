.class public Lpe/hf/black20/util/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SERVER_API:Ljava/lang/String;

.field public static final SERVER_API1:Ljava/lang/String;

.field public static final SERVER_API2:Ljava/lang/String;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "native-lib"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lpe/hf/black20/util/Config;->lkfj()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lpe/hf/black20/util/Config;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lpe/hf/black20/util/Config;->askfj()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lpe/hf/black20/util/Config;->pri()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lpe/hf/black20/util/Config;->SERVER_API:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {}, Lpe/hf/black20/util/Config;->pri()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lpe/hf/black20/util/Config;->SERVER_API1:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {}, Lpe/hf/black20/util/Config;->sec()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lpe/hf/black20/util/Config;->SERVER_API2:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {}, Lpe/hf/black20/util/Config;->xkfj()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lpe/hf/black20/util/Config;->c:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Ljava/net/CookieManager;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static native askfj()Ljava/lang/String;
.end method

.method public static native lkfj()Ljava/lang/String;
.end method

.method public static native pri()Ljava/lang/String;
.end method

.method public static native sec()Ljava/lang/String;
.end method

.method public static native xkfj()Ljava/lang/String;
.end method
