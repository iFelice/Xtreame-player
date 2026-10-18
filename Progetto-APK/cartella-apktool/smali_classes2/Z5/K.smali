.class public abstract LZ5/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/h;


# static fields
.field public static final b:LY5/B;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, LY5/u;->b:LY5/A;

    .line 2
    .line 3
    sget-object v1, LY5/r;->c:Ljava/util/BitSet;

    .line 4
    .line 5
    new-instance v1, LY5/q;

    .line 6
    .line 7
    const-string v2, "grpc-previous-rpc-attempts"

    .line 8
    .line 9
    invoke-direct {v1, v2, v0}, LY5/q;-><init>(Ljava/lang/String;LY5/A;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, LY5/q;

    .line 13
    .line 14
    const-string v2, "grpc-retry-pushback-ms"

    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, LY5/q;-><init>(Ljava/lang/String;LY5/A;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, LY5/B;->f:LY5/B;

    .line 20
    .line 21
    const-string v1, "Stream thrown away because RetriableStream committed"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, LY5/B;->f(Ljava/lang/String;)LY5/B;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, LZ5/K;->b:LY5/B;

    .line 28
    .line 29
    new-instance v0, Ljava/util/Random;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public abstract b(LZ5/Y;)V
.end method
