.class public abstract LC2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/D;


# instance fields
.field public final a:LC2/s;


# direct methods
.method public constructor <init>(LU1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC2/q;->a:LC2/s;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(LC2/H;)LC2/C;
    .locals 2

    .line 1
    new-instance p1, LC2/h;

    .line 2
    .line 3
    iget-object v0, p0, LC2/q;->a:LC2/s;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {p1, v0, v1}, LC2/h;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method
