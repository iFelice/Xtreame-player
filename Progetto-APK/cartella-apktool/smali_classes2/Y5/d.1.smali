.class public abstract LY5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LY5/b;

.field public static final b:LY5/b;

.field public static final c:LY5/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LY5/b;

    .line 2
    .line 3
    const-string v1, "io.grpc.Grpc.TRANSPORT_ATTR_REMOTE_ADDR"

    .line 4
    .line 5
    invoke-direct {v0, v1}, LY5/b;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LY5/d;->a:LY5/b;

    .line 9
    .line 10
    new-instance v0, LY5/b;

    .line 11
    .line 12
    const-string v1, "io.grpc.Grpc.TRANSPORT_ATTR_LOCAL_ADDR"

    .line 13
    .line 14
    invoke-direct {v0, v1}, LY5/b;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LY5/d;->b:LY5/b;

    .line 18
    .line 19
    new-instance v0, LY5/b;

    .line 20
    .line 21
    const-string v1, "io.grpc.Grpc.TRANSPORT_ATTR_SSL_SESSION"

    .line 22
    .line 23
    invoke-direct {v0, v1}, LY5/b;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, LY5/d;->c:LY5/b;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public abstract f()LY5/d;
.end method

.method public abstract g(LY5/d;)V
.end method

.method public abstract h()V
.end method

.method public abstract i(ILjava/lang/String;)V
.end method

.method public varargs abstract j(ILjava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract k(LY5/u;LY5/B;)V
.end method

.method public abstract l()V
.end method

.method public abstract m(I)V
.end method

.method public abstract n()V
.end method

.method public abstract o(LY5/d;LY5/u;)V
.end method
