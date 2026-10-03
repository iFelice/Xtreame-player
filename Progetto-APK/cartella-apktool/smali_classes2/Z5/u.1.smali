.class public abstract LZ5/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/U;
.implements LZ5/j;
.implements LZ5/h;


# static fields
.field public static final a:LY5/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LY5/b;

    .line 2
    .line 3
    const-string v1, "io.grpc.internal.GrpcAttributes.securityLevel"

    .line 4
    .line 5
    invoke-direct {v0, v1}, LY5/b;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LZ5/u;->a:LY5/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract g()V
.end method

.method public abstract h()J
.end method

.method public abstract i(Ljava/lang/Throwable;)V
.end method

.method public abstract j()V
.end method

.method public abstract k(LZ5/o;)V
.end method
