.class public final Landroidx/media3/effect/SingleInputVideoGraph$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/t0;


# instance fields
.field public final a:Lm0/q0;


# direct methods
.method public constructor <init>(Lm0/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/effect/SingleInputVideoGraph$Factory;->a:Lm0/q0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lm0/i;LU0/x;LU0/n;)Lm0/v0;
    .locals 7

    .line 1
    new-instance v6, LA0/Y;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/media3/effect/SingleInputVideoGraph$Factory;->a:Lm0/q0;

    .line 4
    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-direct/range {v0 .. v5}, LA0/Y;-><init>(Landroid/content/Context;Lm0/q0;Lm0/i;LU0/x;LU0/n;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method
