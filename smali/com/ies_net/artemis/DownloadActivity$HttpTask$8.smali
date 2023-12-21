.class Lcom/ies_net/artemis/DownloadActivity$HttpTask$8;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/DownloadActivity$HttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$8;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 221
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 223
    iget-object p2, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$8;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    iget-object p2, p2, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/ies_net/artemis/DownloadActivity;->setResult(ILandroid/content/Intent;)V

    .line 224
    iget-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$8;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    iget-object p1, p1, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-virtual {p1}, Lcom/ies_net/artemis/DownloadActivity;->finish()V

    return-void
.end method
