.class Lcom/ies_net/artemis/ArtemisActivity$4$1;
.super Ljava/lang/Object;
.source "ArtemisActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisActivity$4;->dontAllow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ies_net/artemis/ArtemisActivity$4;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisActivity$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 220
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$4;

    iget-object p1, p1, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisActivity;->finish()V

    return-void
.end method
