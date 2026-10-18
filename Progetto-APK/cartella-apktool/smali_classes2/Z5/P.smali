.class public abstract LZ5/P;
.super LY5/o;
.source "SourceFile"

# interfaces
.implements LY5/l;


# static fields
.field public static final f:LY5/B;

.field public static final g:LY5/B;


# instance fields
.field public d:Ljava/util/Collection;

.field public volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, LZ5/P;

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
    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    sget-object v0, LY5/B;->k:LY5/B;

    .line 16
    .line 17
    const-string v1, "Channel shutdownNow invoked"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, LY5/B;->f(Ljava/lang/String;)LY5/B;

    .line 20
    .line 21
    .line 22
    const-string v1, "Channel shutdown invoked"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, LY5/B;->f(Ljava/lang/String;)LY5/B;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sput-object v1, LZ5/P;->f:LY5/B;

    .line 29
    .line 30
    const-string v1, "Subchannel shutdown invoked"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, LY5/B;->f(Ljava/lang/String;)LY5/B;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, LZ5/P;->g:LY5/B;

    .line 37
    .line 38
    new-instance v1, LZ5/Q;

    .line 39
    .line 40
    new-instance v3, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v4, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-direct/range {v1 .. v7}, LZ5/Q;-><init>(LZ5/u;Ljava/util/HashMap;Ljava/util/HashMap;LZ5/u;Ljava/lang/Object;Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static p(LZ5/P;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LZ5/P;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    throw p0
.end method


# virtual methods
.method public abstract q()V
.end method

.method public abstract r(Z)V
.end method
